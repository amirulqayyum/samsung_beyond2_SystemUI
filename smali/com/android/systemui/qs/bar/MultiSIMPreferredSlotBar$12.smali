.class Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$12;
.super Ljava/lang/Object;
.source "MultiSIMPreferredSlotBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->showSlotListPopupWindow(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V
    .locals 0

    .line 870
    iput-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$12;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 872
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$12;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->access$2200(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 873
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$12;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    sget-object v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->SMS:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->access$2100(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;I)V

    .line 875
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$12;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->access$1500(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    return-void
.end method
