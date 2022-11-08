.class public Lcom/android/launcher3/appprediction/PredictionRowView;
.super Landroid/widget/LinearLayout;
.source "PredictionRowView.java"

# interfaces
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;
.implements Lcom/android/launcher3/allapps/FloatingHeaderRow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ":",
        "Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;",
        ">",
        "Landroid/widget/LinearLayout;",
        "Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;",
        "Lcom/android/launcher3/allapps/FloatingHeaderRow;"
    }
.end annotation


# instance fields
.field private final mActivityContext:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mFocusHelper:Lcom/android/launcher3/keyboard/FocusIndicatorHelper;

.field private mNumPredictedAppsPerRow:I

.field private mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mParent:Lcom/android/launcher3/allapps/FloatingHeaderView;

.field private mPendingPredictedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPredictedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPredictionsEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    .local p0, "this":Lcom/android/launcher3/appprediction/PredictionRowView;, "Lcom/android/launcher3/appprediction/PredictionRowView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/appprediction/PredictionRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 76
    .local p0, "this":Lcom/android/launcher3/appprediction/PredictionRowView;, "Lcom/android/launcher3/appprediction/PredictionRowView<TT;>;"
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPredictedApps:Ljava/util/List;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPredictionsEnabled:Z

    .line 69
    sget-object v1, Lcom/android/launcher3/touch/ItemLongClickListener;->INSTANCE_ALL_APPS:Landroid/view/View$OnLongClickListener;

    iput-object v1, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/launcher3/appprediction/PredictionRowView;->setOrientation(I)V

    .line 79
    new-instance v0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$SimpleFocusIndicatorHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$SimpleFocusIndicatorHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mFocusHelper:Lcom/android/launcher3/keyboard/FocusIndicatorHelper;

    .line 80
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mActivityContext:Landroid/content/Context;

    .line 81
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;

    invoke-interface {v1, p0}, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 82
    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    iput v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mNumPredictedAppsPerRow:I

    .line 83
    invoke-direct {p0}, Lcom/android/launcher3/appprediction/PredictionRowView;->updateVisibility()V

    .line 84
    return-void
.end method

.method private applyPredictedApps(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 168
    .local p0, "this":Lcom/android/launcher3/appprediction/PredictionRowView;, "Lcom/android/launcher3/appprediction/PredictionRowView<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPendingPredictedItems:Ljava/util/List;

    .line 169
    iget-object v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPredictedApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPredictedApps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/appprediction/PredictionRowView$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/launcher3/appprediction/PredictionRowView$$ExternalSyntheticLambda0;-><init>()V

    .line 171
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/appprediction/PredictionRowView$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/launcher3/appprediction/PredictionRowView$$ExternalSyntheticLambda1;-><init>()V

    .line 172
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 170
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 173
    invoke-direct {p0}, Lcom/android/launcher3/appprediction/PredictionRowView;->applyPredictionApps()V

    .line 174
    return-void
.end method

.method private applyPredictionApps()V
    .locals 6

    .line 193
    .local p0, "this":Lcom/android/launcher3/appprediction/PredictionRowView;, "Lcom/android/launcher3/appprediction/PredictionRowView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/PredictionRowView;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mNumPredictedAppsPerRow:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 194
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/PredictionRowView;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mNumPredictedAppsPerRow:I

    if-le v0, v1, :cond_0

    .line 195
    invoke-virtual {p0, v2}, Lcom/android/launcher3/appprediction/PredictionRowView;->removeViewAt(I)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 198
    .local v0, "inflater":Landroid/view/LayoutInflater;
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/PredictionRowView;->getChildCount()I

    move-result v1

    iget v3, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mNumPredictedAppsPerRow:I

    if-ge v1, v3, :cond_1

    .line 199
    sget v1, Lcom/android/launcher3/R$layout;->all_apps_icon:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    .line 201
    .local v1, "icon":Lcom/android/launcher3/BubbleTextView;
    iget-object v3, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mActivityContext:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v3}, Lcom/android/launcher3/views/ActivityContext;->getItemOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v3, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/BubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 203
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lcom/android/launcher3/BubbleTextView;->setLongPressTimeoutFactor(F)V

    .line 204
    iget-object v4, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mFocusHelper:Lcom/android/launcher3/keyboard/FocusIndicatorHelper;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/BubbleTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 206
    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 208
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mActivityContext:Landroid/content/Context;

    check-cast v5, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v5}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 209
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 210
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 211
    invoke-virtual {p0, v1}, Lcom/android/launcher3/appprediction/PredictionRowView;->addView(Landroid/view/View;)V

    .line 212
    .end local v1    # "icon":Lcom/android/launcher3/BubbleTextView;
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_1

    .line 215
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPredictedApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 217
    .local v0, "predictionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/PredictionRowView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 218
    invoke-virtual {p0, v1}, Lcom/android/launcher3/appprediction/PredictionRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    .line 219
    .local v3, "icon":Lcom/android/launcher3/BubbleTextView;
    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->reset()V

    .line 220
    if-le v0, v1, :cond_2

    .line 221
    invoke-virtual {v3, v2}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    .line 222
    iget-object v4, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPredictedApps:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    goto :goto_4

    .line 224
    :cond_2
    if-nez v0, :cond_3

    const/16 v4, 0x8

    goto :goto_3

    :cond_3
    const/4 v4, 0x4

    :goto_3
    invoke-virtual {v3, v4}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    .line 217
    .end local v3    # "icon":Lcom/android/launcher3/BubbleTextView;
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 228
    .end local v1    # "i":I
    :cond_4
    if-lez v0, :cond_5

    const/4 v2, 0x1

    :cond_5
    move v1, v2

    .line 229
    .local v1, "predictionsEnabled":Z
    iget-boolean v2, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPredictionsEnabled:Z

    if-eq v1, v2, :cond_6

    .line 230
    iput-boolean v1, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPredictionsEnabled:Z

    .line 231
    invoke-direct {p0}, Lcom/android/launcher3/appprediction/PredictionRowView;->updateVisibility()V

    .line 233
    :cond_6
    iget-object v2, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mParent:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/FloatingHeaderView;->onHeightUpdated()V

    .line 234
    return-void
.end method

.method static synthetic lambda$applyPredictedApps$0(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1
    .param p0, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 171
    instance-of v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    return v0
.end method

.method static synthetic lambda$applyPredictedApps$1(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 1
    .param p0, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 172
    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    return-object v0
.end method

.method private updateVisibility()V
    .locals 1

    .line 96
    .local p0, "this":Lcom/android/launcher3/appprediction/PredictionRowView;, "Lcom/android/launcher3/appprediction/PredictionRowView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPredictionsEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/appprediction/PredictionRowView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 98
    iget-boolean v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPredictionsEnabled:Z

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->registerIconContainer(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->unregisterIconContainer(Landroid/view/ViewGroup;)V

    .line 104
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 114
    .local p0, "this":Lcom/android/launcher3/appprediction/PredictionRowView;, "Lcom/android/launcher3/appprediction/PredictionRowView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mFocusHelper:Lcom/android/launcher3/keyboard/FocusIndicatorHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->draw(Landroid/graphics/Canvas;)V

    .line 115
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 116
    return-void
.end method

.method public getExpectedHeight()I
    .locals 2

    .line 120
    .local p0, "this":Lcom/android/launcher3/appprediction/PredictionRowView;, "Lcom/android/launcher3/appprediction/PredictionRowView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/PredictionRowView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    .line 121
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/PredictionRowView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 122
    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/PredictionRowView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 120
    :goto_0
    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 1

    .line 260
    .local p0, "this":Lcom/android/launcher3/appprediction/PredictionRowView;, "Lcom/android/launcher3/appprediction/PredictionRowView<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/appprediction/PredictionRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPredictedApps()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">;"
        }
    .end annotation

    .line 144
    .local p0, "this":Lcom/android/launcher3/appprediction/PredictionRowView;, "Lcom/android/launcher3/appprediction/PredictionRowView<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPredictedApps:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getTypeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/android/launcher3/appprediction/PredictionRowView;",
            ">;"
        }
    .end annotation

    .line 255
    .local p0, "this":Lcom/android/launcher3/appprediction/PredictionRowView;, "Lcom/android/launcher3/appprediction/PredictionRowView<TT;>;"
    const-class v0, Lcom/android/launcher3/appprediction/PredictionRowView;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 238
    .local p0, "this":Lcom/android/launcher3/appprediction/PredictionRowView;, "Lcom/android/launcher3/appprediction/PredictionRowView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public hasVisibleContent()Z
    .locals 1

    .line 132
    .local p0, "this":Lcom/android/launcher3/appprediction/PredictionRowView;, "Lcom/android/launcher3/appprediction/PredictionRowView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPredictionsEnabled:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 137
    .local p0, "this":Lcom/android/launcher3/appprediction/PredictionRowView;, "Lcom/android/launcher3/appprediction/PredictionRowView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/PredictionRowView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 88
    .local p0, "this":Lcom/android/launcher3/appprediction/PredictionRowView;, "Lcom/android/launcher3/appprediction/PredictionRowView<TT;>;"
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 89
    return-void
.end method

.method public onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 1
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 187
    .local p0, "this":Lcom/android/launcher3/appprediction/PredictionRowView;, "Lcom/android/launcher3/appprediction/PredictionRowView<TT;>;"
    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    iput v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mNumPredictedAppsPerRow:I

    .line 188
    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/PredictionRowView;->removeAllViews()V

    .line 189
    invoke-direct {p0}, Lcom/android/launcher3/appprediction/PredictionRowView;->applyPredictionApps()V

    .line 190
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 108
    .local p0, "this":Lcom/android/launcher3/appprediction/PredictionRowView;, "Lcom/android/launcher3/appprediction/PredictionRowView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/PredictionRowView;->getExpectedHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 110
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .line 266
    .local p0, "this":Lcom/android/launcher3/appprediction/PredictionRowView;, "Lcom/android/launcher3/appprediction/PredictionRowView<TT;>;"
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onVisibilityAggregated(Z)V

    .line 268
    iget-object v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPendingPredictedItems:Ljava/util/List;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 269
    invoke-direct {p0, v0}, Lcom/android/launcher3/appprediction/PredictionRowView;->applyPredictedApps(Ljava/util/List;)V

    .line 271
    :cond_0
    return-void
.end method

.method public setOnIconLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "onIconLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .line 182
    .local p0, "this":Lcom/android/launcher3/appprediction/PredictionRowView;, "Lcom/android/launcher3/appprediction/PredictionRowView<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 183
    return-void
.end method

.method public setPredictedApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 157
    .local p0, "this":Lcom/android/launcher3/appprediction/PredictionRowView;, "Lcom/android/launcher3/appprediction/PredictionRowView<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_APP_PREDICTIONS_WHILE_VISIBLE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    .line 158
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->isBindingItems()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/PredictionRowView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/PredictionRowView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iput-object p1, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPendingPredictedItems:Ljava/util/List;

    .line 162
    return-void

    .line 164
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/appprediction/PredictionRowView;->applyPredictedApps(Ljava/util/List;)V

    .line 165
    return-void
.end method

.method public setVerticalScroll(IZ)V
    .locals 2
    .param p1, "scroll"    # I
    .param p2, "isScrolledOut"    # Z

    .line 244
    .local p0, "this":Lcom/android/launcher3/appprediction/PredictionRowView;, "Lcom/android/launcher3/appprediction/PredictionRowView<TT;>;"
    if-nez p2, :cond_0

    .line 245
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/appprediction/PredictionRowView;->setTranslationY(F)V

    .line 247
    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/appprediction/PredictionRowView;->setAlpha(F)V

    .line 248
    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/PredictionRowView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 249
    invoke-static {p0}, Lcom/android/launcher3/anim/AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    .line 251
    :cond_2
    return-void
.end method

.method public setup(Lcom/android/launcher3/allapps/FloatingHeaderView;[Lcom/android/launcher3/allapps/FloatingHeaderRow;Z)V
    .locals 0
    .param p1, "parent"    # Lcom/android/launcher3/allapps/FloatingHeaderView;
    .param p2, "rows"    # [Lcom/android/launcher3/allapps/FloatingHeaderRow;
    .param p3, "tabsHidden"    # Z

    .line 92
    .local p0, "this":Lcom/android/launcher3/appprediction/PredictionRowView;, "Lcom/android/launcher3/appprediction/PredictionRowView<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mParent:Lcom/android/launcher3/allapps/FloatingHeaderView;

    .line 93
    return-void
.end method

.method public shouldDraw()Z
    .locals 2

    .line 127
    .local p0, "this":Lcom/android/launcher3/appprediction/PredictionRowView;, "Lcom/android/launcher3/appprediction/PredictionRowView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/PredictionRowView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
