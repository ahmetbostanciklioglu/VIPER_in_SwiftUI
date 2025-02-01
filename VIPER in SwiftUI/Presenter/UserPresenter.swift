import Foundation

//MARK: Presenter Layer(entity doldurma ve verinin iş mantığı ile doldurulması burada yapılıyor)
class UserPresenter: ObservableObject {
    
    @Published var user: User?
    let interactor = UserInteractor()
    
    func loadUser() {
        user = interactor.fetchUser()
    }
    
}
