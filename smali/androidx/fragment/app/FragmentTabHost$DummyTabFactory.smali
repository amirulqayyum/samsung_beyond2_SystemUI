.class Landroidx/fragment/app/FragmentTabHost$DummyTabFactory;
.super Ljava/lang/Object;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DummyTabFactory"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 0

    .line 82
    new-instance p1, Landroid/view/View;

    iget-object p0, p0, Landroidx/fragment/app/FragmentTabHost$DummyTabFactory;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 83
    invoke-virtual {p1, p0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 84
    invoke-virtual {p1, p0}, Landroid/view/View;->setMinimumHeight(I)V

    return-object p1
.end method