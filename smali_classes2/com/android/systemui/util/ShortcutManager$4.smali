.class Lcom/android/systemui/util/ShortcutManager$4;
.super Landroid/os/Handler;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/ShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/ShortcutManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/ShortcutManager;Landroid/os/Looper;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/android/systemui/util/ShortcutManager$4;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 264
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x16b3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager$4;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {p0}, Lcom/android/systemui/util/ShortcutManager;->access$600(Lcom/android/systemui/util/ShortcutManager;)V

    :goto_0
    return-void
.end method
