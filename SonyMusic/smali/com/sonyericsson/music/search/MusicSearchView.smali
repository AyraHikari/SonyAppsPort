.class public Lcom/sonyericsson/music/search/MusicSearchView;
.super Landroidx/appcompat/widget/SearchView;
.source "MusicSearchView.java"


# instance fields
.field private mSavedPreCollapseQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getSavedPreCollapseQuery()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/music/search/MusicSearchView;->mSavedPreCollapseQuery:Ljava/lang/String;

    return-object v0
.end method

.method public onActionViewCollapsed()V
    .locals 1

    .line 34
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/search/MusicSearchView;->mSavedPreCollapseQuery:Ljava/lang/String;

    .line 38
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/SearchView;->onActionViewCollapsed()V

    return-void
.end method
