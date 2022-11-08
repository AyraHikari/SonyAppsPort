.class public abstract Lcom/android/launcher3/allapps/search/SearchAdapterProvider;
.super Lcom/android/launcher3/allapps/BaseAdapterProvider;
.source "SearchAdapterProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/allapps/BaseAdapterProvider;"
    }
.end annotation


# instance fields
.field protected final mLauncher:Lcom/android/launcher3/views/ActivityContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/views/ActivityContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/android/launcher3/allapps/search/SearchAdapterProvider;, "Lcom/android/launcher3/allapps/search/SearchAdapterProvider<TT;>;"
    .local p1, "launcher":Lcom/android/launcher3/views/ActivityContext;, "TT;"
    invoke-direct {p0}, Lcom/android/launcher3/allapps/BaseAdapterProvider;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    .line 38
    return-void
.end method


# virtual methods
.method public abstract getDecorator()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.end method

.method public abstract getHighlightedItem()Landroid/view/View;
.end method

.method public abstract launchHighlightedItem()Z
.end method

.method public onSliceStatusUpdate(Landroid/net/Uri;)V
    .locals 0
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 44
    .local p0, "this":Lcom/android/launcher3/allapps/search/SearchAdapterProvider;, "Lcom/android/launcher3/allapps/search/SearchAdapterProvider<TT;>;"
    return-void
.end method
