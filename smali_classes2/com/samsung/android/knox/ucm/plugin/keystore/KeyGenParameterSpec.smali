.class public Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;
.super Ljava/lang/Object;
.source "KeyGenParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final mAlgorithm:Ljava/lang/String;

.field private final mIsManaged:Z

.field private final mKeySize:I

.field private final mKeystoreAlias:Ljava/lang/String;

.field private final mOptions:Landroid/os/Bundle;

.field private final mOwnerUid:I

.field private final mResourceId:I

.field private final mSourceUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZIILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    .line 32
    iput p2, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mKeySize:I

    .line 33
    iput p3, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mSourceUid:I

    .line 34
    iput-boolean p4, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mIsManaged:Z

    .line 35
    iput p5, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mResourceId:I

    .line 36
    iput p6, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mOwnerUid:I

    .line 37
    iput-object p7, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mAlgorithm:Ljava/lang/String;

    .line 38
    iput-object p8, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mOptions:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 68
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public getKeystoreAlias()Ljava/lang/String;
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 53
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    return-object p0
.end method
