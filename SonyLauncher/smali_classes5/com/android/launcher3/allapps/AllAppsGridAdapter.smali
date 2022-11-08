.class public Lcom/android/launcher3/allapps/AllAppsGridAdapter;
.super Lcom/android/launcher3/allapps/BaseAllAppsAdapter;
.source "AllAppsGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;,
        Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AppsGridAdapter"


# instance fields
.field private final mGridLayoutMgr:Landroidx/recyclerview/widget/GridLayoutManager;

.field private final mGridSizer:Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/AllAppsGridAdapter<",
            "TT;>.GridSpanSizer;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmGridLayoutMgr(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;[Lcom/android/launcher3/allapps/BaseAdapterProvider;)V
    .locals 3
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "apps"    # Lcom/android/launcher3/allapps/AlphabeticalAppsList;
    .param p4, "ownOrderApps"    # Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;
    .param p5, "adapterProviders"    # [Lcom/android/launcher3/allapps/BaseAdapterProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/LayoutInflater;",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList;",
            "Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;",
            "[",
            "Lcom/android/launcher3/allapps/BaseAdapterProvider;",
            ")V"
        }
    .end annotation

    .line 59
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsGridAdapter;, "Lcom/android/launcher3/allapps/AllAppsGridAdapter<TT;>;"
    .local p1, "activityContext":Landroid/content/Context;, "TT;"
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;[Lcom/android/launcher3/allapps/BaseAdapterProvider;)V

    .line 60
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;-><init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridSizer:Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;

    .line 61
    new-instance v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mActivityContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;-><init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 62
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 63
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->setAppsPerRow(I)V

    .line 65
    return-void
.end method


# virtual methods
.method public getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 1

    .line 71
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsGridAdapter;, "Lcom/android/launcher3/allapps/AllAppsGridAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object v0
.end method

.method public setAppsPerRow(I)V
    .locals 11
    .param p1, "appsPerRow"    # I

    .line 144
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsGridAdapter;, "Lcom/android/launcher3/allapps/AllAppsGridAdapter<TT;>;"
    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    .line 145
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    .line 146
    .local v0, "totalSpans":I
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mAdapterProviders:[Lcom/android/launcher3/allapps/BaseAdapterProvider;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 147
    .local v5, "adapterProvider":Lcom/android/launcher3/allapps/BaseAdapterProvider;
    invoke-virtual {v5}, Lcom/android/launcher3/allapps/BaseAdapterProvider;->getSupportedItemsPerRowArray()[I

    move-result-object v6

    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_1

    aget v9, v6, v8

    .line 148
    .local v9, "itemPerRow":I
    rem-int v10, v0, v9

    if-eqz v10, :cond_0

    .line 149
    mul-int/2addr v0, v9

    .line 147
    .end local v9    # "itemPerRow":I
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 146
    .end local v5    # "adapterProvider":Lcom/android/launcher3/allapps/BaseAdapterProvider;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 153
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 154
    return-void
.end method
