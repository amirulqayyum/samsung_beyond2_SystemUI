.class final enum Lcom/android/systemui/swipe/SwipeAnimator$Direction;
.super Ljava/lang/Enum;
.source "SwipeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/swipe/SwipeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/swipe/SwipeAnimator$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/swipe/SwipeAnimator$Direction;

.field public static final enum DOWN:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

.field public static final enum LEFT:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

.field public static final enum RIGHT:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

.field public static final enum SWIPE:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

.field public static final enum TAP:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

.field public static final enum UP:Lcom/android/systemui/swipe/SwipeAnimator$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 176
    new-instance v0, Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    const/4 v1, 0x0

    const-string v2, "LEFT"

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/swipe/SwipeAnimator$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->LEFT:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    .line 177
    new-instance v0, Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    const/4 v2, 0x1

    const-string v3, "RIGHT"

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/swipe/SwipeAnimator$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->RIGHT:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    .line 178
    new-instance v0, Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    const/4 v3, 0x2

    const-string v4, "UP"

    invoke-direct {v0, v4, v3}, Lcom/android/systemui/swipe/SwipeAnimator$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->UP:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    .line 179
    new-instance v0, Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    const/4 v4, 0x3

    const-string v5, "DOWN"

    invoke-direct {v0, v5, v4}, Lcom/android/systemui/swipe/SwipeAnimator$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->DOWN:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    .line 180
    new-instance v0, Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    const/4 v5, 0x4

    const-string v6, "TAP"

    invoke-direct {v0, v6, v5}, Lcom/android/systemui/swipe/SwipeAnimator$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->TAP:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    .line 181
    new-instance v0, Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    const/4 v6, 0x5

    const-string v7, "SWIPE"

    invoke-direct {v0, v7, v6}, Lcom/android/systemui/swipe/SwipeAnimator$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->SWIPE:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    .line 175
    sget-object v7, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->LEFT:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    aput-object v7, v0, v1

    sget-object v1, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->RIGHT:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->UP:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->DOWN:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->TAP:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->SWIPE:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->$VALUES:[Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/swipe/SwipeAnimator$Direction;
    .locals 1

    .line 175
    const-class v0, Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/swipe/SwipeAnimator$Direction;
    .locals 1

    .line 175
    sget-object v0, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->$VALUES:[Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    invoke-virtual {v0}, [Lcom/android/systemui/swipe/SwipeAnimator$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    return-object v0
.end method
