from dataclasses import dataclass

@dataclass
class Customer():
    id: int
    name: str
    email: str
    address: str
    location: str
    origin: int

@dataclass
class Seller():
    id: int
    name: str
    email: str
    location: str
    origin: int

@dataclass
class Product():
    id: int
    name: str
    price: float
    seller: Seller
    origin: int

@dataclass
class Order():
    id: int
    product: Product
    customer: Customer
    origin: int

@dataclass
class ProductReview():
    id: int
    product: Product
    customer: Customer
    review: str
    origin: int