.class public Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "AllAppsGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/AllAppsGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridSpanSizer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .line 161
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;, "Lcom/android/launcher3/allapps/AllAppsGridAdapter<TT;>.GridSpanSizer;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .line 162
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    .line 163
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;->setSpanIndexCacheEnabled(Z)V

    .line 164
    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 4
    .param p1, "position"    # I

    .line 168
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;, "Lcom/android/launcher3/allapps/AllAppsGridAdapter<TT;>.GridSpanSizer;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/sonymobile/launcher/allapps/AppsList;

    invoke-interface {v0}, Lcom/sonymobile/launcher/allapps/AppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    .line 169
    .local v0, "viewType":I
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-static {v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->-$$Nest$fgetmGridLayoutMgr(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    .line 170
    .local v1, "totalSpans":I
    invoke-static {v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->isIconViewType(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x40

    invoke-static {v0, v2}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->isViewType(II)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->getAdapterProvider(I)Lcom/android/launcher3/allapps/BaseAdapterProvider;

    move-result-object v2

    .line 175
    .local v2, "adapterProvider":Lcom/android/launcher3/allapps/BaseAdapterProvider;
    if-eqz v2, :cond_1

    .line 176
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget v3, v3, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher3/allapps/BaseAdapterProvider;->getItemsPerRow(II)I

    move-result v3

    div-int v3, v1, v3

    return v3

    .line 180
    :cond_1
    return v1

    .line 172
    .end local v2    # "adapterProvider":Lcom/android/launcher3/allapps/BaseAdapterProvider;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget v2, v2, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    div-int v2, v1, v2

    return v2
.end method
