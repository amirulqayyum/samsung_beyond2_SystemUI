.class public Lcom/airbnb/lottie/model/content/ShapeFill;
.super Ljava/lang/Object;
.source "ShapeFill.java"

# interfaces
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# instance fields
.field private final color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final fillEnabled:Z

.field private final fillType:Landroid/graphics/Path$FillType;

.field private final hidden:Z

.field private final name:Ljava/lang/String;

.field private final opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Z)V
    .locals 0
    .param p4    # Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->name:Ljava/lang/String;

    .line 24
    iput-boolean p2, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->fillEnabled:Z

    .line 25
    iput-object p3, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->fillType:Landroid/graphics/Path$FillType;

    .line 26
    iput-object p4, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 27
    iput-object p5, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 28
    iput-boolean p6, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->hidden:Z

    return-void
.end method


# virtual methods
.method public getColor()Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 36
    iget-object p0, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    return-object p0
.end method

.method public getFillType()Landroid/graphics/Path$FillType;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->fillType:Landroid/graphics/Path$FillType;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 40
    iget-object p0, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    return-object p0
.end method

.method public isHidden()Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->hidden:Z

    return p0
.end method

.method public toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 1

    .line 52
    new-instance v0, Lcom/airbnb/lottie/animation/content/FillContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/airbnb/lottie/animation/content/FillContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeFill;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeFill{color=, fillEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->fillEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
