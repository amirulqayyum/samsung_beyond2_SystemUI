.class Lcom/android/systemui/appdock/view/AppDockHandlerViewController$2;
.super Ljava/lang/Object;
.source "AppDockHandlerViewController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/appdock/view/AppDockHandlerViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/appdock/view/AppDockHandlerViewController;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController$2;->this$0:Lcom/android/systemui/appdock/view/AppDockHandlerViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onStateChanged : %d"

    invoke-static {v2, v1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 126
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController$2;->this$0:Lcom/android/systemui/appdock/view/AppDockHandlerViewController;

    invoke-virtual {p0, v3}, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->showAndHide(Z)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController$2;->this$0:Lcom/android/systemui/appdock/view/AppDockHandlerViewController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->showAndHide(Z)V

    :goto_0
    return-void
.end method
