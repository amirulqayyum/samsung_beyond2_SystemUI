.class Lcom/android/settingslib/suggestions/SuggestionController$1;
.super Ljava/lang/Object;
.source "SuggestionController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/suggestions/SuggestionController;


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 160
    iget-object p1, p0, Lcom/android/settingslib/suggestions/SuggestionController$1;->this$0:Lcom/android/settingslib/suggestions/SuggestionController;

    invoke-static {p2}, Landroid/service/settings/suggestions/ISuggestionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/settings/suggestions/ISuggestionService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settingslib/suggestions/SuggestionController;->access$002(Lcom/android/settingslib/suggestions/SuggestionController;Landroid/service/settings/suggestions/ISuggestionService;)Landroid/service/settings/suggestions/ISuggestionService;

    .line 161
    iget-object p1, p0, Lcom/android/settingslib/suggestions/SuggestionController$1;->this$0:Lcom/android/settingslib/suggestions/SuggestionController;

    invoke-static {p1}, Lcom/android/settingslib/suggestions/SuggestionController;->access$100(Lcom/android/settingslib/suggestions/SuggestionController;)Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 162
    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionController$1;->this$0:Lcom/android/settingslib/suggestions/SuggestionController;

    invoke-static {p0}, Lcom/android/settingslib/suggestions/SuggestionController;->access$100(Lcom/android/settingslib/suggestions/SuggestionController;)Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;->onServiceConnected()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 168
    iget-object p1, p0, Lcom/android/settingslib/suggestions/SuggestionController$1;->this$0:Lcom/android/settingslib/suggestions/SuggestionController;

    invoke-static {p1}, Lcom/android/settingslib/suggestions/SuggestionController;->access$100(Lcom/android/settingslib/suggestions/SuggestionController;)Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 169
    iget-object p1, p0, Lcom/android/settingslib/suggestions/SuggestionController$1;->this$0:Lcom/android/settingslib/suggestions/SuggestionController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settingslib/suggestions/SuggestionController;->access$002(Lcom/android/settingslib/suggestions/SuggestionController;Landroid/service/settings/suggestions/ISuggestionService;)Landroid/service/settings/suggestions/ISuggestionService;

    .line 170
    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionController$1;->this$0:Lcom/android/settingslib/suggestions/SuggestionController;

    invoke-static {p0}, Lcom/android/settingslib/suggestions/SuggestionController;->access$100(Lcom/android/settingslib/suggestions/SuggestionController;)Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;->onServiceDisconnected()V

    :cond_0
    return-void
.end method
