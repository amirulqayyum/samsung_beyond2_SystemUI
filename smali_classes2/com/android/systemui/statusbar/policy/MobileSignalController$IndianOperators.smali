.class public final enum Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;
.super Ljava/lang/Enum;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IndianOperators"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

.field public static final enum AIRTEL:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

.field public static final enum OTHERS:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

.field public static final enum RELIANCE:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 214
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    const/4 v1, 0x0

    const-string v2, "AIRTEL"

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;->AIRTEL:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    .line 215
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    const/4 v2, 0x1

    const-string v3, "RELIANCE"

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;->RELIANCE:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    .line 216
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    const/4 v3, 0x2

    const-string v4, "OTHERS"

    invoke-direct {v0, v4, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;->OTHERS:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    .line 213
    sget-object v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;->AIRTEL:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;->RELIANCE:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;->OTHERS:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;->$VALUES:[Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 213
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;
    .locals 1

    .line 213
    const-class v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;
    .locals 1

    .line 213
    sget-object v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;->$VALUES:[Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    return-object v0
.end method
