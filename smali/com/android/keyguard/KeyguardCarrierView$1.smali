.class Lcom/android/keyguard/KeyguardCarrierView$1;
.super Landroid/telephony/PhoneStateListener;
.source "KeyguardCarrierView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardCarrierView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardCarrierView;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierView$1;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierView$1;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardCarrierView;->access$000(Lcom/android/keyguard/KeyguardCarrierView;)V

    return-void
.end method
