.class Lcom/android/systemui/volume/util/BroadcastManager$4;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/util/BroadcastManager;->registerOpenThemeChangedAction(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/util/BroadcastManager;

.field final synthetic val$openThemeRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/util/BroadcastManager;Ljava/lang/Runnable;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/systemui/volume/util/BroadcastManager$4;->this$0:Lcom/android/systemui/volume/util/BroadcastManager;

    iput-object p2, p0, Lcom/android/systemui/volume/util/BroadcastManager$4;->val$openThemeRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, 0x4d26f5a3    # 1.75069744E8f

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    .line 108
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastManager$4;->val$openThemeRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_2
    return-void
.end method
