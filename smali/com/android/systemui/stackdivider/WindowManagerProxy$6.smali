.class Lcom/android/systemui/stackdivider/WindowManagerProxy$6;
.super Ljava/lang/Object;
.source "WindowManagerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/WindowManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$6;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 149
    iget-object p0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$6;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->access$1400(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Z

    move-result p0

    const-string v0, "1005"

    if-eqz p0, :cond_0

    const-string p0, "Move divider upwards"

    .line 150
    invoke-static {v0, p0}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "Move divider downwards"

    .line 153
    invoke-static {v0, p0}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0, v0}, Landroid/app/IActivityTaskManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 161
    iget-object v0, p0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 162
    iget-object p0, p0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    const-string v0, "1002"

    .line 164
    invoke-static {v0, p0}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to getStackInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowManagerProxy"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void
.end method
