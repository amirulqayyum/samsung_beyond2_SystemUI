.class Lcom/android/keyguard/EmergencyButton$4;
.super Ljava/lang/Object;
.source "EmergencyButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/EmergencyButton;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/EmergencyButton;


# direct methods
.method constructor <init>(Lcom/android/keyguard/EmergencyButton;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton$4;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButton$4;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {p0}, Lcom/android/keyguard/EmergencyButton;->access$800(Lcom/android/keyguard/EmergencyButton;)Z

    move-result p0

    return p0
.end method
