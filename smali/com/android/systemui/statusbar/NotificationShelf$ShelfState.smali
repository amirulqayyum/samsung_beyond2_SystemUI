.class Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;
.super Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
.source "NotificationShelf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationShelf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShelfState"
.end annotation


# instance fields
.field private hasItemsInStableShelf:Z

.field private maxShelfEnd:F

.field private openedAmount:F

.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShelf;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 0

    .line 1314
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/NotificationShelf$1;)V
    .locals 0

    .line 1314
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;F)F
    .locals 0

    .line 1314
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->openedAmount:F

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;)Z
    .locals 0

    .line 1314
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;Z)Z
    .locals 0

    .line 1314
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;F)F
    .locals 0

    .line 1314
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->maxShelfEnd:F

    return p1
.end method


# virtual methods
.method public animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 1

    .line 1335
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->access$900(Lcom/android/systemui/statusbar/NotificationShelf;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1339
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 1340
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iget p2, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->maxShelfEnd:F

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/NotificationShelf;->setMaxShelfEnd(F)V

    .line 1341
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iget p2, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->openedAmount:F

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/NotificationShelf;->access$1000(Lcom/android/systemui/statusbar/NotificationShelf;F)V

    .line 1342
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShelf;->updateAppearance()V

    .line 1343
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/NotificationShelf;->access$1100(Lcom/android/systemui/statusbar/NotificationShelf;Z)V

    .line 1344
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationShelf;->access$1300(Lcom/android/systemui/statusbar/NotificationShelf;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->access$1200(Lcom/android/systemui/statusbar/NotificationShelf;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    return-void
.end method

.method public applyToView(Landroid/view/View;)V
    .locals 1

    .line 1321
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->access$900(Lcom/android/systemui/statusbar/NotificationShelf;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1325
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 1326
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->maxShelfEnd:F

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setMaxShelfEnd(F)V

    .line 1327
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->openedAmount:F

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->access$1000(Lcom/android/systemui/statusbar/NotificationShelf;F)V

    .line 1328
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShelf;->updateAppearance()V

    .line 1329
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->access$1100(Lcom/android/systemui/statusbar/NotificationShelf;Z)V

    .line 1330
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationShelf;->access$1300(Lcom/android/systemui/statusbar/NotificationShelf;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->access$1200(Lcom/android/systemui/statusbar/NotificationShelf;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    return-void
.end method
