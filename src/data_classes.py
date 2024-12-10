from dataclasses import dataclass
import enum

class State(enum.Enum):
    """
    Enum class to represent the state of the data class objects.
    Used to track changes in the data for synchronization with the databases.
    """
    UNCHANGED = 0
    UPDATED = 1
    DELETED = 2
    NEW = 3

@dataclass
class Customer():
    id: int
    name: str
    email: str
    address: str
    location: str
    origin: int
    state: State = State.UNCHANGED 

@dataclass
class Seller():
    id: int
    name: str
    email: str
    location: str
    origin: int
    state: State = State.UNCHANGED 

@dataclass
class Product():
    id: int
    name: str
    price: float
    seller: Seller
    origin: int
    state: State = State.UNCHANGED 

@dataclass
class Order():
    id: int
    product: Product
    customer: Customer
    origin: int
    state: State = State.UNCHANGED 

@dataclass
class ProductReview():
    id: int
    product: Product
    customer: Customer
    review: str
    origin: int
    state: State = State.UNCHANGED 