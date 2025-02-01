import Foundation

//MARK: - Interactor(iş mantığı) Layer
class UserInteractor {
    func fetchUser() -> User {
        return User(name: "Ahmet", age: 19)
    }
}
