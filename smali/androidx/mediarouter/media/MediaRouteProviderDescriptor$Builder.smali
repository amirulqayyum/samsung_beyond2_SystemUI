.class public final Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;
.super Ljava/lang/Object;
.source "MediaRouteProviderDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouteProviderDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/mediarouter/media/MediaRouteDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportsDynamicGroupRoute:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->mSupportsDynamicGroupRoute:Z

    return-void
.end method

.method public constructor <init>(Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V
    .locals 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->mSupportsDynamicGroupRoute:Z

    if-eqz p1, :cond_0

    .line 167
    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->mRoutes:Ljava/util/List;

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/List;

    .line 168
    iget-boolean p1, p1, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->mSupportsDynamicGroupRoute:Z

    iput-boolean p1, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->mSupportsDynamicGroupRoute:Z

    return-void

    .line 165
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "descriptor must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addRoute(Landroidx/mediarouter/media/MediaRouteDescriptor;)Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;
    .locals 1

    if-eqz p1, :cond_2

    .line 179
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/List;

    goto :goto_0

    .line 181
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    :goto_0
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 182
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "route descriptor already added"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 176
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "route must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public build()Landroidx/mediarouter/media/MediaRouteProviderDescriptor;
    .locals 2

    .line 229
    new-instance v0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/List;

    iget-boolean p0, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->mSupportsDynamicGroupRoute:Z

    invoke-direct {v0, v1, p0}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method

.method setRoutes(Ljava/util/Collection;)Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/mediarouter/media/MediaRouteDescriptor;",
            ">;)",
            "Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 208
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/List;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 209
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/List;

    :goto_1
    return-object p0
.end method
