.class Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$3;
.super Landroid/content/BroadcastReceiver;
.source "ScreenPinningRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 336
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 337
    iget-object p0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$3;->this$1:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    invoke-static {p0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->access$600(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 339
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 340
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$3;->this$1:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    iget-object p0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequest;->clearPrompt()V

    :cond_2
    :goto_0
    return-void
.end method
