.class Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$1;
.super Ljava/lang/Object;
.source "CarrierPlmnHomeInflater.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedWakingUp()V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->showStatusBarCarrierLabel()V

    return-void
.end method
