.class Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;
.super Ljava/lang/Object;
.source "NotificationLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field mIsExpanded:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mIsUserAction:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mIsVisible:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mLocation:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;)V
    .locals 0

    .line 522
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;)V
    .locals 1

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsUserAction:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsUserAction:Ljava/lang/Boolean;

    .line 536
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsExpanded:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsExpanded:Ljava/lang/Boolean;

    .line 537
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsVisible:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsVisible:Ljava/lang/Boolean;

    .line 538
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mLocation:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mLocation:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;)V
    .locals 0

    .line 522
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;-><init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;)Z
    .locals 0

    .line 522
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->isFullySet()Z

    move-result p0

    return p0
.end method

.method private isFullySet()Z
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsUserAction:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsExpanded:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsVisible:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mLocation:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
