.class public Landroidx/slice/widget/RowView;
.super Landroidx/slice/widget/SliceChildView;
.source "RowView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/RowView$TimeSetListener;,
        Landroidx/slice/widget/RowView$DateSetListener;
    }
.end annotation


# static fields
.field private static final HEIGHT_UNBOUND:I = -0x1

.field private static final MAX_END_ITEMS:I = 0x3

.field private static final SLIDER_INTERVAL:I = 0xc8

.field private static final STAR_COLOR_INDEX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RowView"

.field private static final sCanSpecifyLargerRangeBarHeight:Z


# instance fields
.field private final mActionDivider:Landroid/view/View;

.field private final mActionSpinner:Landroid/widget/ProgressBar;

.field private final mActions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroidx/slice/core/SliceActionImpl;",
            "Landroidx/slice/widget/SliceActionView;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowTwoLines:Z

.field private final mBottomDivider:Landroid/view/View;

.field private final mContent:Landroid/widget/LinearLayout;

.field private final mEndContainer:Landroid/widget/LinearLayout;

.field mHandler:Landroid/os/Handler;

.field private mHeaderActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field

.field private mIconSize:I

.field private mImageSize:I

.field private mIsHeader:Z

.field mIsRangeSliding:Z

.field private mIsStarRating:Z

.field mLastSentRangeUpdate:J

.field private final mLastUpdatedText:Landroid/widget/TextView;

.field protected mLoadingActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasuredRangeHeight:I

.field private final mPrimaryText:Landroid/widget/TextView;

.field private mRangeBar:Landroid/view/View;

.field mRangeHasPendingUpdate:Z

.field private mRangeItem:Landroidx/slice/SliceItem;

.field mRangeMaxValue:I

.field mRangeMinValue:I

.field mRangeUpdater:Ljava/lang/Runnable;

.field mRangeUpdaterRunning:Z

.field mRangeValue:I

.field private final mRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

.field private final mRootView:Landroid/widget/LinearLayout;

.field private mRowAction:Landroidx/slice/core/SliceActionImpl;

.field mRowContent:Landroidx/slice/widget/RowContent;

.field mRowIndex:I

.field private final mSecondaryText:Landroid/widget/TextView;

.field private mSeeMoreView:Landroid/view/View;

.field private final mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSelectionItem:Landroidx/slice/SliceItem;

.field private mSelectionOptionKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionOptionValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionSpinner:Landroid/widget/Spinner;

.field mShowActionSpinner:Z

.field private final mStartContainer:Landroid/widget/LinearLayout;

.field private mStartItem:Landroidx/slice/SliceItem;

.field private final mSubContent:Landroid/widget/LinearLayout;

.field private final mToggles:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroidx/slice/core/SliceActionImpl;",
            "Landroidx/slice/widget/SliceActionView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroidx/slice/widget/RowView;->sCanSpecifyLargerRangeBarHeight:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 214
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;)V

    .line 154
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    .line 155
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    .line 164
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    .line 1427
    new-instance v0, Landroidx/slice/widget/RowView$2;

    invoke-direct {v0, p0}, Landroidx/slice/widget/RowView$2;-><init>(Landroidx/slice/widget/RowView;)V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mRangeUpdater:Ljava/lang/Runnable;

    .line 1435
    new-instance v0, Landroidx/slice/widget/RowView$3;

    invoke-direct {v0, p0}, Landroidx/slice/widget/RowView$3;-><init>(Landroidx/slice/widget/RowView;)V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1469
    new-instance v0, Landroidx/slice/widget/RowView$4;

    invoke-direct {v0, p0}, Landroidx/slice/widget/RowView$4;-><init>(Landroidx/slice/widget/RowView;)V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    .line 215
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/RowView;->mIconSize:I

    .line 216
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_small_image_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/RowView;->mImageSize:I

    .line 218
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$layout;->abc_slice_small_template:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    .line 220
    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->addView(Landroid/view/View;)V

    .line 222
    sget v0, Landroidx/slice/view/R$id;->icon_frame:I

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    .line 223
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    .line 224
    sget v1, Landroidx/slice/view/R$id;->subcontent:I

    invoke-virtual {p0, v1}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Landroidx/slice/widget/RowView;->mSubContent:Landroid/widget/LinearLayout;

    .line 225
    const v1, 0x1020016

    invoke-virtual {p0, v1}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    .line 226
    const v1, 0x1020010

    invoke-virtual {p0, v1}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    .line 227
    sget v1, Landroidx/slice/view/R$id;->last_updated:I

    invoke-virtual {p0, v1}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    .line 228
    sget v1, Landroidx/slice/view/R$id;->bottom_divider:I

    invoke-virtual {p0, v1}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/RowView;->mBottomDivider:Landroid/view/View;

    .line 229
    sget v1, Landroidx/slice/view/R$id;->action_divider:I

    invoke-virtual {p0, v1}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/RowView;->mActionDivider:Landroid/view/View;

    .line 230
    sget v1, Landroidx/slice/view/R$id;->action_sent_indicator:I

    invoke-virtual {p0, v1}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Landroidx/slice/widget/RowView;->mActionSpinner:Landroid/widget/ProgressBar;

    .line 231
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/slice/widget/SliceViewUtil;->tintIndeterminateProgressBar(Landroid/content/Context;Landroid/widget/ProgressBar;)V

    .line 232
    const v1, 0x1020018

    invoke-virtual {p0, v1}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    .line 233
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 234
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 236
    return-void
.end method

.method private addAction(Landroidx/slice/core/SliceActionImpl;ILandroid/view/ViewGroup;Z)V
    .locals 15
    .param p1, "actionContent"    # Landroidx/slice/core/SliceActionImpl;
    .param p2, "color"    # I
    .param p3, "container"    # Landroid/view/ViewGroup;
    .param p4, "isStart"    # Z

    .line 1000
    move-object v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    new-instance v1, Landroidx/slice/widget/SliceActionView;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v4, v0, Landroidx/slice/widget/RowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    invoke-direct {v1, v2, v3, v4}, Landroidx/slice/widget/SliceActionView;-><init>(Landroid/content/Context;Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/RowStyle;)V

    move-object v9, v1

    .line 1001
    .local v9, "sav":Landroidx/slice/widget/SliceActionView;
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1002
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    .line 1003
    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1006
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v10

    .line 1007
    .local v10, "isToggle":Z
    xor-int/lit8 v1, v10, 0x1

    move v11, v1

    .line 1008
    .local v11, "actionType":I
    if-eqz v10, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v12, v1

    .line 1009
    .local v12, "rowType":I
    new-instance v1, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getMode()I

    move-result v3

    iget v4, v0, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-direct {v1, v3, v11, v12, v4}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    move-object v13, v1

    .line 1010
    .local v13, "info":Landroidx/slice/widget/EventInfo;
    const/4 v14, 0x1

    if-eqz p4, :cond_2

    .line 1011
    invoke-virtual {v13, v2, v2, v14}, Landroidx/slice/widget/EventInfo;->setPosition(III)V

    .line 1013
    :cond_2
    iget-object v4, v0, Landroidx/slice/widget/RowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    iget-object v6, v0, Landroidx/slice/widget/RowView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    move-object v1, v9

    move-object/from16 v2, p1

    move-object v3, v13

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/slice/widget/SliceActionView;->setAction(Landroidx/slice/core/SliceActionImpl;Landroidx/slice/widget/EventInfo;Landroidx/slice/widget/SliceView$OnSliceActionListener;ILandroidx/slice/widget/SliceActionView$SliceActionLoadingListener;)V

    .line 1014
    iget-object v1, v0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    invoke-virtual/range {p1 .. p1}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1015
    invoke-virtual {v9, v14}, Landroidx/slice/widget/SliceActionView;->setLoading(Z)V

    .line 1017
    :cond_3
    if-eqz v10, :cond_4

    .line 1018
    iget-object v1, v0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v1, v7, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1020
    :cond_4
    iget-object v1, v0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v7, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    :goto_1
    return-void
.end method

.method private addItem(Landroidx/slice/SliceItem;IZ)Z
    .locals 17
    .param p1, "sliceItem"    # Landroidx/slice/SliceItem;
    .param p2, "color"    # I
    .param p3, "isStart"    # Z

    .line 1029
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    .line 1030
    .local v4, "icon":Landroidx/core/graphics/drawable/IconCompat;
    const/4 v5, 0x0

    .line 1031
    .local v5, "timeStamp":Landroidx/slice/SliceItem;
    if-eqz v3, :cond_0

    iget-object v6, v0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_0
    iget-object v6, v0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    .line 1032
    .local v6, "container":Landroid/view/ViewGroup;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v7

    const-string v8, "slice"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v7, :cond_1

    .line 1033
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v7

    const-string v10, "action"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1034
    :cond_1
    const-string v7, "shortcut"

    invoke-virtual {v1, v7}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1035
    new-instance v7, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v7, v1}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    invoke-direct {v0, v7, v2, v6, v3}, Landroidx/slice/widget/RowView;->addAction(Landroidx/slice/core/SliceActionImpl;ILandroid/view/ViewGroup;Z)V

    .line 1036
    return v8

    .line 1038
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 1039
    return v9

    .line 1041
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v1, v7

    check-cast v1, Landroidx/slice/SliceItem;

    .line 1045
    .end local p1    # "sliceItem":Landroidx/slice/SliceItem;
    .local v1, "sliceItem":Landroidx/slice/SliceItem;
    :cond_4
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v7

    const-string v10, "image"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1046
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    goto :goto_1

    .line 1047
    :cond_5
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v7

    const-string v10, "long"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1048
    move-object v5, v1

    .line 1050
    :cond_6
    :goto_1
    const/4 v7, 0x0

    .line 1051
    .local v7, "addedView":Landroid/view/View;
    if-eqz v4, :cond_12

    .line 1052
    const-string v10, "no_tint"

    invoke-virtual {v1, v10}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v10

    xor-int/2addr v10, v8

    .line 1053
    .local v10, "isIcon":Z
    const-string v11, "raw"

    invoke-virtual {v1, v11}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v11

    .line 1054
    .local v11, "useIntrinsicSize":Z
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/RowView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->density:F

    .line 1055
    .local v12, "density":F
    new-instance v13, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1056
    .local v13, "iv":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 1057
    .local v14, "d":Landroid/graphics/drawable/Drawable;
    iget-object v15, v0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v15, :cond_7

    iget-object v15, v0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 1058
    invoke-virtual {v15}, Landroidx/slice/widget/SliceStyle;->getApplyCornerRadiusToLargeImages()Z

    move-result v15

    if-eqz v15, :cond_7

    move v15, v8

    goto :goto_2

    :cond_7
    move v15, v9

    .line 1059
    .local v15, "hasRoundedImage":Z
    :goto_2
    if-eqz v15, :cond_8

    const-string v8, "large"

    invoke-virtual {v1, v8}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1060
    new-instance v8, Landroidx/slice/CornerDrawable;

    iget-object v9, v0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v9}, Landroidx/slice/widget/SliceStyle;->getImageCornerRadius()F

    move-result v9

    invoke-direct {v8, v14, v9}, Landroidx/slice/CornerDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    .line 1061
    .local v8, "cd":Landroidx/slice/CornerDrawable;
    invoke-virtual {v13, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1062
    .end local v8    # "cd":Landroidx/slice/CornerDrawable;
    goto :goto_3

    .line 1063
    :cond_8
    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1065
    :goto_3
    const/4 v8, -0x1

    if-eqz v10, :cond_9

    if-eq v2, v8, :cond_9

    .line 1066
    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1069
    :cond_9
    iget-boolean v9, v0, Landroidx/slice/widget/RowView;->mIsRangeSliding:Z

    if-eqz v9, :cond_a

    .line 1070
    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1071
    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 1073
    :cond_a
    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1075
    :goto_4
    iget-object v9, v0, Landroidx/slice/widget/RowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    if-eqz v9, :cond_d

    .line 1076
    iget-object v9, v0, Landroidx/slice/widget/RowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    invoke-virtual {v9}, Landroidx/slice/widget/RowStyle;->getIconSize()I

    move-result v9

    .line 1077
    .local v9, "styleIconSize":I
    if-lez v9, :cond_b

    move v8, v9

    goto :goto_5

    :cond_b
    iget v8, v0, Landroidx/slice/widget/RowView;->mIconSize:I

    :goto_5
    iput v8, v0, Landroidx/slice/widget/RowView;->mIconSize:I

    .line 1078
    iget-object v8, v0, Landroidx/slice/widget/RowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    invoke-virtual {v8}, Landroidx/slice/widget/RowStyle;->getImageSize()I

    move-result v8

    .line 1079
    .local v8, "styleImageSize":I
    if-lez v8, :cond_c

    move v2, v8

    goto :goto_6

    :cond_c
    iget v2, v0, Landroidx/slice/widget/RowView;->mImageSize:I

    :goto_6
    iput v2, v0, Landroidx/slice/widget/RowView;->mImageSize:I

    .line 1081
    .end local v8    # "styleImageSize":I
    .end local v9    # "styleIconSize":I
    :cond_d
    invoke-virtual {v13}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1082
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v11, :cond_e

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    goto :goto_7

    :cond_e
    iget v8, v0, Landroidx/slice/widget/RowView;->mImageSize:I

    :goto_7
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1083
    if-eqz v11, :cond_f

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    goto :goto_8

    .line 1084
    :cond_f
    iget v8, v0, Landroidx/slice/widget/RowView;->mImageSize:I

    :goto_8
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1085
    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1086
    const/4 v8, 0x0

    .line 1087
    .local v8, "p":I
    if-eqz v10, :cond_11

    .line 1088
    iget v9, v0, Landroidx/slice/widget/RowView;->mImageSize:I

    move-object/from16 v16, v2

    const/4 v2, -0x1

    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v16, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-ne v9, v2, :cond_10

    .line 1089
    iget v2, v0, Landroidx/slice/widget/RowView;->mIconSize:I

    div-int/lit8 v2, v2, 0x2

    goto :goto_9

    :cond_10
    iget v2, v0, Landroidx/slice/widget/RowView;->mIconSize:I

    sub-int/2addr v9, v2

    div-int/lit8 v2, v9, 0x2

    :goto_9
    move v8, v2

    goto :goto_a

    .line 1087
    .end local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_11
    move-object/from16 v16, v2

    .line 1091
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_a
    invoke-virtual {v13, v8, v8, v8, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1092
    move-object v7, v13

    .line 1093
    .end local v8    # "p":I
    .end local v10    # "isIcon":Z
    .end local v11    # "useIntrinsicSize":Z
    .end local v12    # "density":F
    .end local v13    # "iv":Landroid/widget/ImageView;
    .end local v14    # "d":Landroid/graphics/drawable/Drawable;
    .end local v15    # "hasRoundedImage":Z
    .end local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, 0x0

    goto :goto_c

    :cond_12
    if-eqz v5, :cond_14

    .line 1094
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1095
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroidx/slice/widget/SliceViewUtil;->getTimestampString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1096
    iget-object v8, v0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v8, :cond_13

    .line 1097
    iget-object v8, v0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v8}, Landroidx/slice/widget/SliceStyle;->getSubtitleSize()I

    move-result v8

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1098
    iget-object v8, v0, Landroidx/slice/widget/RowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    invoke-virtual {v8}, Landroidx/slice/widget/RowStyle;->getSubtitleColor()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_b

    .line 1096
    :cond_13
    const/4 v9, 0x0

    .line 1100
    :goto_b
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1101
    move-object v7, v2

    goto :goto_c

    .line 1093
    .end local v2    # "tv":Landroid/widget/TextView;
    :cond_14
    const/4 v9, 0x0

    .line 1103
    :goto_c
    if-eqz v7, :cond_15

    const/4 v8, 0x1

    goto :goto_d

    :cond_15
    move v8, v9

    :goto_d
    return v8
.end method

.method private addRangeView()V
    .locals 11

    .line 825
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 826
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    .line 828
    :cond_0
    iget-boolean v0, p0, Landroidx/slice/widget/RowView;->mIsStarRating:Z

    if-eqz v0, :cond_1

    .line 829
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->addRatingBarView()V

    .line 830
    return-void

    .line 834
    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    const-string v1, "int"

    const-string v2, "range_mode"

    invoke-static {v0, v1, v2}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 835
    .local v0, "style":Landroidx/slice/SliceItem;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getInt()I

    move-result v3

    if-ne v3, v1, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    .line 836
    .local v3, "isIndeterminate":Z
    :goto_0
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v4

    const-string v5, "action"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 837
    .local v4, "isSeekBar":Z
    iget-object v5, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-nez v5, :cond_3

    move v5, v1

    goto :goto_1

    :cond_3
    move v5, v2

    .line 839
    .local v5, "renderInNewLine":Z
    :goto_1
    if-eqz v4, :cond_5

    .line 841
    if-eqz v5, :cond_4

    .line 842
    new-instance v6, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .local v6, "progressBar":Landroid/widget/ProgressBar;
    goto :goto_3

    .line 844
    .end local v6    # "progressBar":Landroid/widget/ProgressBar;
    :cond_4
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Landroidx/slice/view/R$layout;->abc_slice_seekbar_view:I

    invoke-virtual {v6, v7, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    .line 846
    .restart local v6    # "progressBar":Landroid/widget/ProgressBar;
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    if-eqz v7, :cond_8

    .line 847
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    invoke-virtual {v7}, Landroidx/slice/widget/RowStyle;->getSeekBarInlineWidth()I

    move-result v7

    invoke-direct {p0, v6, v7}, Landroidx/slice/widget/RowView;->setViewWidth(Landroid/view/View;I)V

    goto :goto_3

    .line 852
    .end local v6    # "progressBar":Landroid/widget/ProgressBar;
    :cond_5
    if-eqz v5, :cond_6

    .line 853
    new-instance v6, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    const v9, 0x1010078

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v6    # "progressBar":Landroid/widget/ProgressBar;
    goto :goto_2

    .line 856
    .end local v6    # "progressBar":Landroid/widget/ProgressBar;
    :cond_6
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Landroidx/slice/view/R$layout;->abc_slice_progress_inline_view:I

    invoke-virtual {v6, v7, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    .line 858
    .restart local v6    # "progressBar":Landroid/widget/ProgressBar;
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    if-eqz v7, :cond_7

    .line 859
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 860
    invoke-virtual {v7}, Landroidx/slice/widget/RowStyle;->getProgressBarInlineWidth()I

    move-result v7

    .line 859
    invoke-direct {p0, v6, v7}, Landroidx/slice/widget/RowView;->setViewWidth(Landroid/view/View;I)V

    .line 861
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 862
    invoke-virtual {v7}, Landroidx/slice/widget/RowStyle;->getProgressBarStartPadding()I

    move-result v7

    iget-object v8, p0, Landroidx/slice/widget/RowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 863
    invoke-virtual {v8}, Landroidx/slice/widget/RowStyle;->getProgressBarEndPadding()I

    move-result v8

    .line 861
    invoke-direct {p0, v6, v7, v8}, Landroidx/slice/widget/RowView;->setViewSidePaddings(Landroid/view/View;II)V

    .line 866
    :cond_7
    :goto_2
    if-eqz v3, :cond_8

    .line 867
    invoke-virtual {v6, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 870
    :cond_8
    :goto_3
    if-eqz v3, :cond_9

    .line 871
    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 870
    invoke-static {v7}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_4

    .line 872
    :cond_9
    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :goto_4
    nop

    .line 873
    .local v7, "progressDrawable":Landroid/graphics/drawable/Drawable;
    iget v8, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_b

    if-eqz v7, :cond_b

    .line 874
    iget v8, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    invoke-static {v7, v8}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 875
    if-eqz v3, :cond_a

    .line 876
    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 878
    :cond_a
    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 883
    :cond_b
    :goto_5
    iget v8, p0, Landroidx/slice/widget/RowView;->mRangeMaxValue:I

    iget v10, p0, Landroidx/slice/widget/RowView;->mRangeMinValue:I

    sub-int/2addr v8, v10

    invoke-virtual {v6, v8}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 884
    iget v8, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    invoke-virtual {v6, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 885
    invoke-virtual {v6, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 886
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-nez v2, :cond_c

    .line 887
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v9, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v6, v1}, Landroidx/slice/widget/RowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 890
    :cond_c
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mSubContent:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 891
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 893
    :goto_6
    iput-object v6, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    .line 894
    if-eqz v4, :cond_f

    .line 895
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getInputRangeThumb()Landroidx/slice/SliceItem;

    move-result-object v1

    .line 896
    .local v1, "thumb":Landroidx/slice/SliceItem;
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    check-cast v2, Landroid/widget/SeekBar;

    .line 897
    .local v2, "seekBar":Landroid/widget/SeekBar;
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 898
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v8

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 899
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_d

    .line 900
    invoke-virtual {v2, v8}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 903
    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    :cond_d
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v8}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 904
    .local v8, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    iget v10, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    if-eq v10, v9, :cond_e

    if-eqz v8, :cond_e

    .line 905
    iget v9, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    invoke-static {v8, v9}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 906
    invoke-virtual {v2, v8}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 908
    :cond_e
    iget-object v9, p0, Landroidx/slice/widget/RowView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v9}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 910
    .end local v1    # "thumb":Landroidx/slice/SliceItem;
    .end local v2    # "seekBar":Landroid/widget/SeekBar;
    .end local v8    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    :cond_f
    return-void
.end method

.method private addRatingBarView()V
    .locals 6

    .line 913
    new-instance v0, Landroid/widget/RatingBar;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;)V

    .line 914
    .local v0, "ratingBar":Landroid/widget/RatingBar;
    invoke-virtual {v0}, Landroid/widget/RatingBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 915
    .local v1, "starDrawable":Landroid/graphics/drawable/LayerDrawable;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 917
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setStepSize(F)V

    .line 918
    iget v2, p0, Landroidx/slice/widget/RowView;->mRangeMaxValue:I

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setNumStars(I)V

    .line 919
    iget v2, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 920
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 921
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 922
    .local v3, "ratingBarContainer":Landroid/widget/LinearLayout;
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 923
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 924
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 926
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v2, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v2}, Landroidx/slice/widget/RowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 928
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 929
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    .line 930
    return-void
.end method

.method private addSelection(Landroidx/slice/SliceItem;)V
    .locals 7
    .param p1, "selection"    # Landroidx/slice/SliceItem;

    .line 955
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 956
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    .line 959
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSelectionOptionKeys:Ljava/util/ArrayList;

    .line 960
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSelectionOptionValues:Ljava/util/ArrayList;

    .line 962
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v0

    .line 964
    .local v0, "optionItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 965
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    .line 966
    .local v2, "optionItem":Landroidx/slice/SliceItem;
    const-string v3, "selection_option"

    invoke-virtual {v2, v3}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 967
    goto :goto_1

    .line 970
    :cond_1
    nop

    .line 971
    const-string v3, "text"

    const-string v4, "selection_option_key"

    invoke-static {v2, v3, v4}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    .line 972
    .local v4, "optionKeyItem":Landroidx/slice/SliceItem;
    nop

    .line 973
    const-string v5, "selection_option_value"

    invoke-static {v2, v3, v5}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    .line 974
    .local v3, "optionValueItem":Landroidx/slice/SliceItem;
    if-eqz v4, :cond_3

    if-nez v3, :cond_2

    .line 975
    goto :goto_1

    .line 978
    :cond_2
    iget-object v5, p0, Landroidx/slice/widget/RowView;->mSelectionOptionKeys:Ljava/util/ArrayList;

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 979
    iget-object v5, p0, Landroidx/slice/widget/RowView;->mSelectionOptionValues:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    .end local v2    # "optionItem":Landroidx/slice/SliceItem;
    .end local v3    # "optionValueItem":Landroidx/slice/SliceItem;
    .end local v4    # "optionKeyItem":Landroidx/slice/SliceItem;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 982
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroidx/slice/view/R$layout;->abc_slice_row_selection:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    .line 985
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 986
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Landroidx/slice/view/R$layout;->abc_slice_row_selection_text:I

    iget-object v4, p0, Landroidx/slice/widget/RowView;->mSelectionOptionValues:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 987
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    sget v2, Landroidx/slice/view/R$layout;->abc_slice_row_selection_dropdown_text:I

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 988
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 990
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v2}, Landroidx/slice/widget/RowView;->addView(Landroid/view/View;)V

    .line 993
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 994
    return-void
.end method

.method private addSubtitle(Z)V
    .locals 10
    .param p1, "hasTitle"    # Z

    .line 722
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    goto/16 :goto_c

    .line 725
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 726
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getSummaryItem()Landroidx/slice/SliceItem;

    move-result-object v0

    goto :goto_0

    .line 727
    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getSubtitleItem()Landroidx/slice/SliceItem;

    move-result-object v0

    :goto_0
    nop

    .line 728
    .local v0, "subtitleItem":Landroidx/slice/SliceItem;
    const/4 v2, 0x0

    .line 729
    .local v2, "subtitleTimeString":Ljava/lang/CharSequence;
    iget-boolean v3, p0, Landroidx/slice/widget/RowView;->mShowLastUpdated:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-wide v5, p0, Landroidx/slice/widget/RowView;->mLastUpdated:J

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-eqz v3, :cond_2

    .line 730
    iget-wide v5, p0, Landroidx/slice/widget/RowView;->mLastUpdated:J

    invoke-direct {p0, v5, v6}, Landroidx/slice/widget/RowView;->getRelativeTimeString(J)Ljava/lang/CharSequence;

    move-result-object v3

    .line 731
    .local v3, "relativeTime":Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    .line 732
    nop

    .line 733
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroidx/slice/view/R$string;->abc_slice_updated:I

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v3, v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 736
    .end local v3    # "relativeTime":Ljava/lang/CharSequence;
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 737
    .local v3, "subtitle":Ljava/lang/CharSequence;
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v0, :cond_4

    .line 738
    const-string v5, "partial"

    invoke-virtual {v0, v5}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    move v5, v4

    goto :goto_3

    :cond_5
    :goto_2
    move v5, v1

    .line 739
    .local v5, "subtitleExists":Z
    :goto_3
    if-eqz v5, :cond_8

    .line 740
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v6, :cond_8

    .line 742
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    iget-boolean v7, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    if-eqz v7, :cond_6

    .line 743
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v7}, Landroidx/slice/widget/SliceStyle;->getHeaderSubtitleSize()I

    move-result v7

    int-to-float v7, v7

    goto :goto_4

    .line 744
    :cond_6
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v7}, Landroidx/slice/widget/SliceStyle;->getSubtitleSize()I

    move-result v7

    int-to-float v7, v7

    .line 742
    :goto_4
    invoke-virtual {v6, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 745
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    iget-object v7, p0, Landroidx/slice/widget/RowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    invoke-virtual {v7}, Landroidx/slice/widget/RowStyle;->getSubtitleColor()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 746
    iget-boolean v6, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    if-eqz v6, :cond_7

    .line 747
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v6}, Landroidx/slice/widget/SliceStyle;->getVerticalHeaderTextPadding()I

    move-result v6

    goto :goto_5

    .line 748
    :cond_7
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v6}, Landroidx/slice/widget/SliceStyle;->getVerticalTextPadding()I

    move-result v6

    :goto_5
    nop

    .line 749
    .local v6, "verticalPadding":I
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v7, v4, v6, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 752
    .end local v6    # "verticalPadding":I
    :cond_8
    const/4 v6, 0x2

    if-eqz v2, :cond_b

    .line 753
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 754
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " \u00b7 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 756
    :cond_9
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 757
    .local v7, "sp":Landroid/text/SpannableString;
    new-instance v8, Landroid/text/style/StyleSpan;

    invoke-direct {v8, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-virtual {v7, v8, v4, v9, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 758
    iget-object v8, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    iget-object v8, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v8, :cond_b

    .line 760
    iget-object v8, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    iget-boolean v9, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    if-eqz v9, :cond_a

    .line 761
    iget-object v9, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v9}, Landroidx/slice/widget/SliceStyle;->getHeaderSubtitleSize()I

    move-result v9

    goto :goto_6

    :cond_a
    iget-object v9, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v9}, Landroidx/slice/widget/SliceStyle;->getSubtitleSize()I

    move-result v9

    :goto_6
    int-to-float v9, v9

    .line 760
    invoke-virtual {v8, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 762
    iget-object v8, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    iget-object v9, p0, Landroidx/slice/widget/RowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    invoke-virtual {v9}, Landroidx/slice/widget/RowStyle;->getSubtitleColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 765
    .end local v7    # "sp":Landroid/text/SpannableString;
    :cond_b
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/16 v9, 0x8

    if-eqz v8, :cond_c

    move v8, v9

    goto :goto_7

    :cond_c
    move v8, v4

    :goto_7
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 766
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    if-eqz v5, :cond_d

    move v9, v4

    :cond_d
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 770
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v7}, Landroidx/slice/widget/RowContent;->getIsHeader()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-boolean v7, p0, Landroidx/slice/widget/RowView;->mAllowTwoLines:Z

    if-eqz v7, :cond_e

    goto :goto_8

    :cond_e
    move v7, v4

    goto :goto_9

    :cond_f
    :goto_8
    move v7, v1

    .line 772
    .local v7, "canHaveMultiLines":Z
    :goto_9
    if-eqz v7, :cond_10

    if-nez p1, :cond_10

    if-eqz v5, :cond_10

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 773
    goto :goto_a

    :cond_10
    move v6, v1

    .line 774
    .local v6, "maxLines":I
    :goto_a
    iget-object v8, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    if-ne v6, v1, :cond_11

    goto :goto_b

    :cond_11
    move v1, v4

    :goto_b
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 775
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 779
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 780
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 781
    return-void

    .line 723
    .end local v0    # "subtitleItem":Landroidx/slice/SliceItem;
    .end local v2    # "subtitleTimeString":Ljava/lang/CharSequence;
    .end local v3    # "subtitle":Ljava/lang/CharSequence;
    .end local v5    # "subtitleExists":Z
    .end local v6    # "maxLines":I
    .end local v7    # "canHaveMultiLines":Z
    :cond_12
    :goto_c
    return-void
.end method

.method private applyRowStyle()V
    .locals 3

    .line 249
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 254
    invoke-virtual {v1}, Landroidx/slice/widget/RowStyle;->getTitleItemStartPadding()I

    move-result v1

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    invoke-virtual {v2}, Landroidx/slice/widget/RowStyle;->getTitleItemEndPadding()I

    move-result v2

    .line 253
    invoke-direct {p0, v0, v1, v2}, Landroidx/slice/widget/RowView;->setViewSidePaddings(Landroid/view/View;II)V

    .line 255
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 256
    invoke-virtual {v1}, Landroidx/slice/widget/RowStyle;->getContentStartPadding()I

    move-result v1

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    invoke-virtual {v2}, Landroidx/slice/widget/RowStyle;->getContentEndPadding()I

    move-result v2

    .line 255
    invoke-direct {p0, v0, v1, v2}, Landroidx/slice/widget/RowView;->setViewSidePaddings(Landroid/view/View;II)V

    .line 257
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 258
    invoke-virtual {v1}, Landroidx/slice/widget/RowStyle;->getTitleStartPadding()I

    move-result v1

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    invoke-virtual {v2}, Landroidx/slice/widget/RowStyle;->getTitleEndPadding()I

    move-result v2

    .line 257
    invoke-direct {p0, v0, v1, v2}, Landroidx/slice/widget/RowView;->setViewSidePaddings(Landroid/view/View;II)V

    .line 259
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSubContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 260
    invoke-virtual {v1}, Landroidx/slice/widget/RowStyle;->getSubContentStartPadding()I

    move-result v1

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    invoke-virtual {v2}, Landroidx/slice/widget/RowStyle;->getSubContentEndPadding()I

    move-result v2

    .line 259
    invoke-direct {p0, v0, v1, v2}, Landroidx/slice/widget/RowView;->setViewSidePaddings(Landroid/view/View;II)V

    .line 261
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 262
    invoke-virtual {v1}, Landroidx/slice/widget/RowStyle;->getEndItemStartPadding()I

    move-result v1

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    invoke-virtual {v2}, Landroidx/slice/widget/RowStyle;->getEndItemEndPadding()I

    move-result v2

    .line 261
    invoke-direct {p0, v0, v1, v2}, Landroidx/slice/widget/RowView;->setViewSidePaddings(Landroid/view/View;II)V

    .line 263
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mBottomDivider:Landroid/view/View;

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 264
    invoke-virtual {v1}, Landroidx/slice/widget/RowStyle;->getBottomDividerStartPadding()I

    move-result v1

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    invoke-virtual {v2}, Landroidx/slice/widget/RowStyle;->getBottomDividerEndPadding()I

    move-result v2

    .line 263
    invoke-direct {p0, v0, v1, v2}, Landroidx/slice/widget/RowView;->setViewSideMargins(Landroid/view/View;II)V

    .line 265
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActionDivider:Landroid/view/View;

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    invoke-virtual {v1}, Landroidx/slice/widget/RowStyle;->getActionDividerHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/slice/widget/RowView;->setViewHeight(Landroid/view/View;I)V

    .line 266
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    invoke-virtual {v0}, Landroidx/slice/widget/RowStyle;->getTintColor()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 267
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    invoke-virtual {v0}, Landroidx/slice/widget/RowStyle;->getTintColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->setTint(I)V

    .line 269
    :cond_1
    return-void

    .line 250
    :cond_2
    :goto_0
    return-void
.end method

.method private getRelativeTimeString(J)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "time"    # J

    .line 784
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 785
    .local v0, "difference":J
    const-wide v2, 0x7528ad000L

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_0

    .line 786
    div-long v2, v0, v2

    long-to-int v2, v2

    .line 787
    .local v2, "years":I
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroidx/slice/view/R$plurals;->abc_slice_duration_years:I

    new-array v6, v6, [Ljava/lang/Object;

    .line 788
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    .line 787
    invoke-virtual {v3, v4, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 789
    .end local v2    # "years":I
    :cond_0
    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 790
    div-long v2, v0, v2

    long-to-int v2, v2

    .line 791
    .local v2, "days":I
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroidx/slice/view/R$plurals;->abc_slice_duration_days:I

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v3, v4, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 792
    .end local v2    # "days":I
    :cond_1
    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 793
    div-long v2, v0, v2

    long-to-int v2, v2

    .line 794
    .local v2, "mins":I
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroidx/slice/view/R$plurals;->abc_slice_duration_min:I

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v3, v4, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 796
    .end local v2    # "mins":I
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method private getRowContentHeight()I
    .locals 3

    .line 378
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v0, v1, v2}, Landroidx/slice/widget/RowContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v0

    .line 379
    .local v0, "rowHeight":I
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-nez v1, :cond_0

    .line 380
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v1}, Landroidx/slice/widget/SliceStyle;->getRowRangeHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 382
    :cond_0
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_1

    .line 383
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v1}, Landroidx/slice/widget/SliceStyle;->getRowSelectionHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 385
    :cond_1
    return v0
.end method

.method private initRangeBar()V
    .locals 7

    .line 801
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    const-string v1, "int"

    const-string v2, "min"

    invoke-static {v0, v1, v2}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 802
    .local v0, "min":Landroidx/slice/SliceItem;
    const/4 v2, 0x0

    .line 803
    .local v2, "minValue":I
    if-eqz v0, :cond_0

    .line 804
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getInt()I

    move-result v2

    .line 806
    :cond_0
    iput v2, p0, Landroidx/slice/widget/RowView;->mRangeMinValue:I

    .line 808
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    const-string v4, "max"

    invoke-static {v3, v1, v4}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    .line 809
    .local v3, "max":Landroidx/slice/SliceItem;
    iget-boolean v4, p0, Landroidx/slice/widget/RowView;->mIsStarRating:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x5

    goto :goto_0

    :cond_1
    const/16 v4, 0x64

    .line 810
    .local v4, "maxValue":I
    :goto_0
    if-eqz v3, :cond_2

    .line 811
    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getInt()I

    move-result v4

    .line 813
    :cond_2
    iput v4, p0, Landroidx/slice/widget/RowView;->mRangeMaxValue:I

    .line 815
    iget-object v5, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    const-string v6, "value"

    invoke-static {v5, v1, v6}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    .line 816
    .local v1, "progress":Landroidx/slice/SliceItem;
    const/4 v5, 0x0

    .line 817
    .local v5, "progressValue":I
    if-eqz v1, :cond_3

    .line 818
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getInt()I

    move-result v6

    sub-int v5, v6, v2

    .line 820
    :cond_3
    iput v5, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    .line 821
    return-void
.end method

.method private measureChildWithExactHeight(Landroid/view/View;II)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "childHeight"    # I

    .line 441
    iget v0, p0, Landroidx/slice/widget/RowView;->mInsetTop:I

    add-int/2addr v0, p3

    iget v1, p0, Landroidx/slice/widget/RowView;->mInsetBottom:I

    add-int/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 443
    .local v0, "heightMeasureSpec":I
    invoke-virtual {p0, p1, p2, v0}, Landroidx/slice/widget/RowView;->measureChild(Landroid/view/View;II)V

    .line 444
    return-void
.end method

.method private onClickPicker(Z)V
    .locals 13
    .param p1, "isDatePicker"    # Z

    .line 1221
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-nez v0, :cond_0

    .line 1222
    return-void

    .line 1224
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ASDF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v2}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v0

    const-string v1, "long"

    const-string v2, "millis"

    invoke-static {v0, v1, v2}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 1227
    .local v0, "dateTimeItem":Landroidx/slice/SliceItem;
    if-nez v0, :cond_1

    .line 1228
    return-void

    .line 1230
    :cond_1
    iget v1, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    .line 1231
    .local v1, "rowIndex":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1232
    .local v2, "cal":Ljava/util/Calendar;
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1233
    if-eqz p1, :cond_2

    .line 1234
    new-instance v3, Landroid/app/DatePickerDialog;

    .line 1235
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Landroidx/slice/view/R$style;->DialogTheme:I

    new-instance v9, Landroidx/slice/widget/RowView$DateSetListener;

    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 1237
    invoke-virtual {v4}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v4

    invoke-direct {v9, p0, v4, v1}, Landroidx/slice/widget/RowView$DateSetListener;-><init>(Landroidx/slice/widget/RowView;Landroidx/slice/SliceItem;I)V

    const/4 v4, 0x1

    .line 1238
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v4, 0x2

    .line 1239
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/4 v4, 0x5

    .line 1240
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v12

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 1241
    .local v3, "dialog":Landroid/app/DatePickerDialog;
    invoke-virtual {v3}, Landroid/app/DatePickerDialog;->show()V

    .line 1242
    .end local v3    # "dialog":Landroid/app/DatePickerDialog;
    goto :goto_0

    .line 1243
    :cond_2
    new-instance v3, Landroid/app/TimePickerDialog;

    .line 1244
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Landroidx/slice/view/R$style;->DialogTheme:I

    new-instance v7, Landroidx/slice/widget/RowView$TimeSetListener;

    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 1246
    invoke-virtual {v4}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v4

    invoke-direct {v7, p0, v4, v1}, Landroidx/slice/widget/RowView$TimeSetListener;-><init>(Landroidx/slice/widget/RowView;Landroidx/slice/SliceItem;I)V

    const/16 v4, 0xb

    .line 1247
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v4, 0xc

    .line 1248
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 1250
    .local v3, "dialog":Landroid/app/TimePickerDialog;
    invoke-virtual {v3}, Landroid/app/TimePickerDialog;->show()V

    .line 1252
    .end local v3    # "dialog":Landroid/app/TimePickerDialog;
    :goto_0
    return-void
.end method

.method private populateViews(Z)V
    .locals 11
    .param p1, "isUpdate"    # Z

    .line 535
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Landroidx/slice/widget/RowView;->mIsRangeSliding:Z

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 536
    .local v2, "skipSliderUpdate":Z
    :goto_0
    if-nez v2, :cond_1

    .line 537
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->resetViewState()V

    .line 540
    :cond_1
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v3}, Landroidx/slice/widget/RowContent;->getLayoutDir()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 541
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v3}, Landroidx/slice/widget/RowContent;->getLayoutDir()I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/slice/widget/RowView;->setLayoutDirection(I)V

    .line 543
    :cond_2
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v3}, Landroidx/slice/widget/RowContent;->isDefaultSeeMore()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 544
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->showSeeMore()V

    .line 545
    return-void

    .line 547
    :cond_3
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v3}, Landroidx/slice/widget/RowContent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    .line 548
    .local v3, "contentDescr":Ljava/lang/CharSequence;
    if-eqz v3, :cond_4

    .line 549
    iget-object v5, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 551
    :cond_4
    iget-object v5, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v5}, Landroidx/slice/widget/RowContent;->getStartItem()Landroidx/slice/SliceItem;

    move-result-object v5

    iput-object v5, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    .line 552
    if-eqz v5, :cond_6

    iget-object v5, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v5}, Landroidx/slice/widget/RowContent;->getIsHeader()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 553
    invoke-virtual {v5}, Landroidx/slice/widget/RowContent;->hasTitleItems()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    move v5, v0

    goto :goto_1

    :cond_6
    move v5, v1

    .line 554
    .local v5, "showStart":Z
    :goto_1
    if-eqz v5, :cond_7

    .line 555
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    iget v7, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    invoke-direct {p0, v6, v7, v0}, Landroidx/slice/widget/RowView;->addItem(Landroidx/slice/SliceItem;IZ)Z

    move-result v5

    .line 557
    :cond_7
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    if-eqz v5, :cond_8

    move v8, v1

    goto :goto_2

    :cond_8
    move v8, v7

    :goto_2
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 559
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v6}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v6

    .line 560
    .local v6, "titleItem":Landroidx/slice/SliceItem;
    if-eqz v6, :cond_9

    .line 561
    iget-object v8, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    :cond_9
    iget-object v8, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v8, :cond_b

    .line 564
    iget-object v8, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    iget-boolean v9, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    if-eqz v9, :cond_a

    .line 565
    iget-object v9, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v9}, Landroidx/slice/widget/SliceStyle;->getHeaderTitleSize()I

    move-result v9

    int-to-float v9, v9

    goto :goto_3

    .line 566
    :cond_a
    iget-object v9, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v9}, Landroidx/slice/widget/SliceStyle;->getTitleSize()I

    move-result v9

    int-to-float v9, v9

    .line 564
    :goto_3
    invoke-virtual {v8, v1, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 567
    iget-object v8, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    iget-object v9, p0, Landroidx/slice/widget/RowView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    invoke-virtual {v9}, Landroidx/slice/widget/RowStyle;->getTitleColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 569
    :cond_b
    iget-object v8, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    if-eqz v6, :cond_c

    move v9, v1

    goto :goto_4

    :cond_c
    move v9, v7

    :goto_4
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 571
    if-eqz v6, :cond_d

    move v8, v0

    goto :goto_5

    :cond_d
    move v8, v1

    :goto_5
    invoke-direct {p0, v8}, Landroidx/slice/widget/RowView;->addSubtitle(Z)V

    .line 573
    iget-object v8, p0, Landroidx/slice/widget/RowView;->mBottomDivider:Landroid/view/View;

    iget-object v9, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v9}, Landroidx/slice/widget/RowContent;->hasBottomDivider()Z

    move-result v9

    if-eqz v9, :cond_e

    move v7, v1

    :cond_e
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 575
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v7}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v7

    .line 576
    .local v7, "primaryAction":Landroidx/slice/SliceItem;
    const/4 v8, 0x2

    if-eqz v7, :cond_10

    iget-object v9, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-eq v7, v9, :cond_10

    .line 577
    new-instance v9, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v9, v7}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    iput-object v9, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 578
    invoke-virtual {v9}, Landroidx/slice/core/SliceActionImpl;->getSubtype()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_10

    .line 579
    iget-object v9, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v9}, Landroidx/slice/core/SliceActionImpl;->getSubtype()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_f
    goto :goto_6

    :sswitch_0
    const-string v10, "date_picker"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    move v4, v0

    goto :goto_6

    :sswitch_1
    const-string v10, "time_picker"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    move v4, v8

    goto :goto_6

    :sswitch_2
    const-string v10, "toggle"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    move v4, v1

    :goto_6
    packed-switch v4, :pswitch_data_0

    goto :goto_7

    .line 590
    :pswitch_0
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v0}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    .line 591
    return-void

    .line 587
    :pswitch_1
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v0}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    .line 588
    return-void

    .line 582
    :pswitch_2
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    iget v8, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    iget-object v9, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v4, v8, v9, v1}, Landroidx/slice/widget/RowView;->addAction(Landroidx/slice/core/SliceActionImpl;ILandroid/view/ViewGroup;Z)V

    .line 584
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v0}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    .line 585
    return-void

    .line 597
    :cond_10
    :goto_7
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v4}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v4

    .line 598
    .local v4, "range":Landroidx/slice/SliceItem;
    if-eqz v4, :cond_15

    .line 599
    iget-object v9, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v9, :cond_11

    .line 600
    iget-object v9, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v9, v0}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    .line 602
    :cond_11
    iput-object v4, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    .line 603
    const-string v9, "int"

    const-string v10, "range_mode"

    invoke-static {v4, v9, v10}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v9

    .line 604
    .local v9, "mode":Landroidx/slice/SliceItem;
    if-eqz v9, :cond_13

    .line 605
    invoke-virtual {v9}, Landroidx/slice/SliceItem;->getInt()I

    move-result v10

    if-ne v10, v8, :cond_12

    goto :goto_8

    :cond_12
    move v0, v1

    :goto_8
    iput-boolean v0, p0, Landroidx/slice/widget/RowView;->mIsStarRating:Z

    .line 607
    :cond_13
    if-nez v2, :cond_14

    .line 608
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->initRangeBar()V

    .line 609
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->addRangeView()V

    .line 612
    :cond_14
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_15

    .line 613
    return-void

    .line 617
    .end local v9    # "mode":Landroidx/slice/SliceItem;
    :cond_15
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getSelection()Landroidx/slice/SliceItem;

    move-result-object v0

    .line 618
    .local v0, "selection":Landroidx/slice/SliceItem;
    if-eqz v0, :cond_16

    .line 619
    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSelectionItem:Landroidx/slice/SliceItem;

    .line 620
    invoke-direct {p0, v0}, Landroidx/slice/widget/RowView;->addSelection(Landroidx/slice/SliceItem;)V

    .line 621
    return-void

    .line 624
    :cond_16
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->updateEndItems()V

    .line 625
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V

    .line 626
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x33c144ac -> :sswitch_2
        0x2d3f6240 -> :sswitch_1
        0x4a87b63f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resetViewState()V
    .locals 6

    .line 1381
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1382
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->setLayoutDirection(I)V

    .line 1383
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    .line 1384
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    .line 1385
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1386
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1387
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1388
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1389
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1390
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1391
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1392
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1393
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1394
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 1395
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mBottomDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1396
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActionDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1397
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSeeMoreView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1398
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1399
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mSeeMoreView:Landroid/view/View;

    .line 1401
    :cond_0
    iput-boolean v1, p0, Landroidx/slice/widget/RowView;->mIsRangeSliding:Z

    .line 1402
    iput-boolean v1, p0, Landroidx/slice/widget/RowView;->mRangeHasPendingUpdate:Z

    .line 1403
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    .line 1404
    iput v1, p0, Landroidx/slice/widget/RowView;->mRangeMinValue:I

    .line 1405
    iput v1, p0, Landroidx/slice/widget/RowView;->mRangeMaxValue:I

    .line 1406
    iput v1, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    .line 1407
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroidx/slice/widget/RowView;->mLastSentRangeUpdate:J

    .line 1408
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    .line 1409
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1410
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-nez v4, :cond_1

    .line 1411
    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 1413
    :cond_1
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1415
    :goto_0
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    .line 1417
    :cond_2
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSubContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1418
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    .line 1419
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActionSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1420
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    .line 1421
    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->removeView(Landroid/view/View;)V

    .line 1422
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    .line 1424
    :cond_3
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mSelectionItem:Landroidx/slice/SliceItem;

    .line 1425
    return-void
.end method

.method private setViewClickable(Landroid/view/View;Z)V
    .locals 2
    .param p1, "layout"    # Landroid/view/View;
    .param p2, "isClickable"    # Z

    .line 1362
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1363
    if-eqz p2, :cond_1

    .line 1364
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x101030e

    invoke-static {v0, v1}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 1365
    :cond_1
    nop

    .line 1363
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1366
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 1367
    return-void
.end method

.method private setViewHeight(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "height"    # I

    .line 301
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 303
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 304
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method private setViewSideMargins(Landroid/view/View;II)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 285
    if-gez p2, :cond_0

    if-gez p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 286
    .local v0, "isNoMarginSet":Z
    :goto_0
    if-eqz p1, :cond_4

    if-eqz v0, :cond_1

    goto :goto_1

    .line 290
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 291
    .local v1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    if-ltz p2, :cond_2

    .line 292
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 294
    :cond_2
    if-ltz p3, :cond_3

    .line 295
    invoke-virtual {v1, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 297
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    return-void

    .line 287
    .end local v1    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_4
    :goto_1
    return-void
.end method

.method private setViewSidePaddings(Landroid/view/View;II)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 272
    if-gez p2, :cond_0

    if-gez p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 273
    .local v0, "isNoPaddingSet":Z
    :goto_0
    if-eqz p1, :cond_4

    if-eqz v0, :cond_1

    goto :goto_3

    .line 277
    :cond_1
    nop

    .line 278
    if-ltz p2, :cond_2

    move v1, p2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    .line 279
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 280
    if-ltz p3, :cond_3

    move v3, p3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    .line 281
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 277
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 282
    return-void

    .line 274
    :cond_4
    :goto_3
    return-void
.end method

.method private setViewWidth(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "width"    # I

    .line 309
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    .line 310
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 311
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 312
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method private showSeeMore()V
    .locals 3

    .line 1107
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$layout;->abc_slice_row_show_more:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1109
    .local v0, "b":Landroid/widget/Button;
    new-instance v1, Landroidx/slice/widget/RowView$1;

    invoke-direct {v1, p0, v0}, Landroidx/slice/widget/RowView$1;-><init>(Landroidx/slice/widget/RowView;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1134
    iget v1, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1135
    iget v1, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1137
    :cond_0
    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSeeMoreView:Landroid/view/View;

    .line 1138
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1139
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v2}, Landroidx/slice/widget/RowContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1140
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    .line 1141
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1142
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V

    .line 1144
    :cond_1
    return-void
.end method

.method private updateEndItems()V
    .locals 12

    .line 630
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    goto/16 :goto_b

    .line 633
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 636
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getEndItems()Ljava/util/List;

    move-result-object v0

    .line 637
    .local v0, "endItems":Ljava/util/List;
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mHeaderActions:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 639
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mHeaderActions:Ljava/util/List;

    .line 643
    :cond_1
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getIsHeader()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 644
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->hasTitleItems()Z

    move-result v1

    if-nez v1, :cond_2

    .line 645
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    :cond_2
    const/4 v1, 0x0

    .line 650
    .local v1, "endItemCount":I
    const/4 v2, 0x0

    .line 651
    .local v2, "firstItemIsADefaultToggle":Z
    const/4 v3, 0x0

    .line 652
    .local v3, "singleActionAtTheEnd":Z
    const/4 v4, 0x0

    .line 653
    .local v4, "endAction":Landroidx/slice/SliceItem;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, "action"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge v5, v6, :cond_8

    .line 654
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroidx/slice/SliceItem;

    if-eqz v6, :cond_3

    .line 655
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/slice/SliceItem;

    goto :goto_1

    .line 656
    :cond_3
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v6}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v6

    :goto_1
    nop

    .line 657
    .local v6, "endItem":Landroidx/slice/SliceItem;
    const/4 v10, 0x3

    if-ge v1, v10, :cond_7

    .line 658
    iget v10, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    invoke-direct {p0, v6, v10, v8}, Landroidx/slice/widget/RowView;->addItem(Landroidx/slice/SliceItem;IZ)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 659
    if-nez v4, :cond_4

    invoke-static {v6, v7}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 660
    move-object v4, v6

    .line 662
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 663
    if-ne v1, v9, :cond_7

    .line 664
    iget-object v10, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 665
    invoke-virtual {v6}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v10

    const-string v11, "image"

    invoke-static {v10, v11}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v10

    if-nez v10, :cond_5

    move v10, v9

    goto :goto_2

    :cond_5
    move v10, v8

    :goto_2
    move v2, v10

    .line 666
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v9, :cond_6

    .line 667
    invoke-static {v6, v7}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v7

    if-eqz v7, :cond_6

    move v8, v9

    goto :goto_3

    :cond_6
    nop

    :goto_3
    move v3, v8

    .line 653
    .end local v6    # "endItem":Landroidx/slice/SliceItem;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 672
    .end local v5    # "i":I
    :cond_8
    iget-object v5, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    if-lez v1, :cond_9

    move v10, v8

    goto :goto_4

    :cond_9
    move v10, v6

    :goto_4
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 676
    iget-object v5, p0, Landroidx/slice/widget/RowView;->mActionDivider:Landroid/view/View;

    iget-object v10, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v10, :cond_b

    if-nez v2, :cond_a

    iget-object v10, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 677
    invoke-virtual {v10}, Landroidx/slice/widget/RowContent;->hasActionDivider()Z

    move-result v10

    if-eqz v10, :cond_b

    if-eqz v3, :cond_b

    .line 678
    :cond_a
    move v6, v8

    goto :goto_5

    :cond_b
    nop

    .line 676
    :goto_5
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 679
    iget-object v5, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-eqz v5, :cond_c

    .line 680
    invoke-static {v5, v7}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v5

    if-eqz v5, :cond_c

    move v5, v9

    goto :goto_6

    :cond_c
    move v5, v8

    .line 681
    .local v5, "hasStartAction":Z
    :goto_6
    if-eqz v4, :cond_d

    move v6, v9

    goto :goto_7

    :cond_d
    move v6, v8

    .line 683
    .local v6, "hasEndItemAction":Z
    :goto_7
    const/4 v7, 0x0

    .line 684
    .local v7, "endAndRowActionTheSame":Z
    iget-object v10, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v10, :cond_e

    .line 685
    iget-object v10, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v10, v9}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    goto :goto_9

    .line 686
    :cond_e
    if-eq v6, v5, :cond_12

    if-eq v1, v9, :cond_f

    if-eqz v5, :cond_12

    .line 688
    :cond_f
    const/4 v7, 0x1

    .line 689
    iget-object v10, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_10

    .line 690
    iget-object v10, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/slice/core/SliceActionImpl;

    iput-object v10, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    goto :goto_8

    .line 691
    :cond_10
    iget-object v10, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_11

    iget-object v10, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ne v10, v9, :cond_11

    .line 692
    iget-object v10, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/slice/widget/SliceActionView;

    invoke-virtual {v10}, Landroidx/slice/widget/SliceActionView;->getAction()Landroidx/slice/core/SliceActionImpl;

    move-result-object v10

    iput-object v10, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 694
    :cond_11
    :goto_8
    iget-object v10, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v10, v9}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    .line 697
    :cond_12
    :goto_9
    iget-object v10, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v10, :cond_13

    if-nez v7, :cond_13

    iget-object v11, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    .line 698
    invoke-virtual {v10}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 699
    iput-boolean v9, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    .line 702
    :cond_13
    iget-object v9, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->isClickable()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 703
    goto :goto_a

    .line 704
    :cond_14
    const/4 v8, 0x2

    .line 702
    :goto_a
    invoke-static {v9, v8}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 706
    return-void

    .line 631
    .end local v0    # "endItems":Ljava/util/List;
    .end local v1    # "endItemCount":I
    .end local v2    # "firstItemIsADefaultToggle":Z
    .end local v3    # "singleActionAtTheEnd":Z
    .end local v4    # "endAction":Landroidx/slice/SliceItem;
    .end local v5    # "hasStartAction":Z
    .end local v6    # "hasEndItemAction":Z
    .end local v7    # "endAndRowActionTheSame":Z
    :cond_15
    :goto_b
    return-void
.end method


# virtual methods
.method protected getEndItemKeys()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v0, "endItemKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v1, :cond_1

    .line 358
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getEndItems()Ljava/util/List;

    move-result-object v1

    .line 361
    .local v1, "endItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    const/4 v2, 0x0

    .line 362
    .local v2, "endItemCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 363
    const/4 v4, 0x3

    if-ge v2, v4, :cond_0

    .line 364
    new-instance v4, Landroidx/slice/core/SliceActionImpl;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/slice/SliceItem;

    invoke-direct {v4, v5}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    .line 365
    .local v4, "endItemAction":Landroidx/slice/core/SliceActionImpl;
    invoke-virtual {v4}, Landroidx/slice/core/SliceActionImpl;->getKey()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 366
    invoke-virtual {v4}, Landroidx/slice/core/SliceActionImpl;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    .end local v4    # "endItemAction":Landroidx/slice/core/SliceActionImpl;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 371
    .end local v1    # "endItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .end local v2    # "endItemCount":I
    .end local v3    # "i":I
    :cond_1
    return-object v0
.end method

.method protected getPrimaryActionItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 331
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected getPrimaryActionKey()Ljava/lang/String;
    .locals 2

    .line 339
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v0

    .line 341
    .local v0, "primaryAction":Landroidx/slice/SliceItem;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-eq v0, v1, :cond_0

    .line 342
    new-instance v1, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v1, v0}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    iput-object v1, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 343
    invoke-virtual {v1}, Landroidx/slice/core/SliceActionImpl;->getKey()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 346
    .end local v0    # "primaryAction":Landroidx/slice/SliceItem;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 1168
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1172
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getSubtype()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1173
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getSubtype()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v3, "date_picker"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v4

    goto :goto_0

    :sswitch_1
    const-string v3, "time_picker"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "toggle"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 1184
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceActionView;

    .local v0, "sav":Landroidx/slice/widget/SliceActionView;
    goto :goto_1

    .line 1181
    .end local v0    # "sav":Landroidx/slice/widget/SliceActionView;
    :pswitch_0
    invoke-direct {p0, v1}, Landroidx/slice/widget/RowView;->onClickPicker(Z)V

    .line 1182
    return-void

    .line 1178
    :pswitch_1
    invoke-direct {p0, v4}, Landroidx/slice/widget/RowView;->onClickPicker(Z)V

    .line 1179
    return-void

    .line 1175
    :pswitch_2
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceActionView;

    .line 1176
    .restart local v0    # "sav":Landroidx/slice/widget/SliceActionView;
    nop

    .line 1184
    :goto_1
    goto :goto_2

    .line 1187
    .end local v0    # "sav":Landroidx/slice/widget/SliceActionView;
    :cond_2
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceActionView;

    .line 1189
    .restart local v0    # "sav":Landroidx/slice/widget/SliceActionView;
    :goto_2
    if-eqz v0, :cond_3

    instance-of v2, p1, Landroidx/slice/widget/SliceActionView;

    if-nez v2, :cond_3

    .line 1192
    invoke-virtual {v0}, Landroidx/slice/widget/SliceActionView;->sendAction()V

    goto :goto_3

    .line 1194
    :cond_3
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v2}, Landroidx/slice/widget/RowContent;->getIsHeader()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1198
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->performClick()Z

    goto :goto_3

    .line 1201
    :cond_4
    :try_start_0
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 1202
    invoke-virtual {v2}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    .line 1203
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v2, :cond_5

    .line 1204
    new-instance v2, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getMode()I

    move-result v3

    const/4 v4, 0x3

    iget v5, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-direct {v2, v3, v4, v1, v5}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    move-object v1, v2

    .line 1206
    .local v1, "info":Landroidx/slice/widget/EventInfo;
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v3}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V

    .line 1208
    .end local v1    # "info":Landroidx/slice/widget/EventInfo;
    :cond_5
    iget-boolean v1, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    if-eqz v1, :cond_6

    .line 1209
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v2}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v2

    iget v3, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-interface {v1, v2, v3}, Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;->onSliceActionLoading(Landroidx/slice/SliceItem;I)V

    .line 1210
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v2}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1212
    :cond_6
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1215
    goto :goto_3

    .line 1213
    :catch_0
    move-exception v1

    .line 1214
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "RowView"

    const-string v3, "PendingIntent for slice cannot be sent"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1218
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_3
    return-void

    .line 1169
    .end local v0    # "sav":Landroidx/slice/widget/SliceActionView;
    :cond_7
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x33c144ac -> :sswitch_2
        0x2d3f6240 -> :sswitch_1
        0x4a87b63f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1323
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSelectionItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_4

    if-ltz p3, :cond_4

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSelectionOptionKeys:Ljava/util/ArrayList;

    .line 1326
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p3, v0, :cond_0

    goto :goto_1

    .line 1330
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v0, :cond_1

    .line 1331
    new-instance v0, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getMode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x6

    iget v4, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 1334
    .local v0, "info":Landroidx/slice/widget/EventInfo;
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mSelectionItem:Landroidx/slice/SliceItem;

    invoke-interface {v1, v0, v2}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V

    .line 1337
    .end local v0    # "info":Landroidx/slice/widget/EventInfo;
    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSelectionOptionKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1340
    .local v0, "optionKey":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mSelectionItem:Landroidx/slice/SliceItem;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x10000000

    .line 1341
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.app.slice.extra.SELECTION"

    .line 1342
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 1340
    invoke-virtual {v1, v2, v3}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 1343
    .local v1, "loading":Z
    if-eqz v1, :cond_3

    .line 1344
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    .line 1345
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    if-eqz v2, :cond_2

    .line 1346
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v3}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v3

    iget v4, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-interface {v2, v3, v4}, Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;->onSliceActionLoading(Landroidx/slice/SliceItem;I)V

    .line 1347
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v3}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1349
    :cond_2
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1353
    .end local v1    # "loading":Z
    :cond_3
    goto :goto_0

    .line 1351
    :catch_0
    move-exception v1

    .line 1352
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "RowView"

    const-string v3, "PendingIntent for slice cannot be sent"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1354
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_0
    return-void

    .line 1327
    .end local v0    # "optionKey":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 489
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getPaddingLeft()I

    move-result v0

    .line 490
    .local v0, "leftPadding":I
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    iget v2, p0, Landroidx/slice/widget/RowView;->mInsetTop:I

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    .line 491
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->getRowContentHeight()I

    move-result v4

    iget v5, p0, Landroidx/slice/widget/RowView;->mInsetTop:I

    add-int/2addr v4, v5

    .line 490
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 492
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-nez v1, :cond_0

    .line 496
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v1}, Landroidx/slice/widget/SliceStyle;->getRowRangeHeight()I

    move-result v1

    iget v2, p0, Landroidx/slice/widget/RowView;->mMeasuredRangeHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 497
    .local v1, "verticalPadding":I
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->getRowContentHeight()I

    move-result v2

    add-int/2addr v2, v1

    iget v3, p0, Landroidx/slice/widget/RowView;->mInsetTop:I

    add-int/2addr v2, v3

    .line 498
    .local v2, "top":I
    iget v3, p0, Landroidx/slice/widget/RowView;->mMeasuredRangeHeight:I

    add-int/2addr v3, v2

    .line 499
    .local v3, "bottom":I
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v4, v0, v2, v5, v3}, Landroid/view/View;->layout(IIII)V

    .end local v1    # "verticalPadding":I
    .end local v2    # "top":I
    .end local v3    # "bottom":I
    goto :goto_0

    .line 500
    :cond_0
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_1

    .line 501
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->getRowContentHeight()I

    move-result v1

    iget v2, p0, Landroidx/slice/widget/RowView;->mInsetTop:I

    add-int/2addr v1, v2

    .line 502
    .local v1, "top":I
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v1

    .line 503
    .local v2, "bottom":I
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    .line 504
    invoke-virtual {v3}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v0

    .line 503
    invoke-virtual {v3, v0, v1, v4, v2}, Landroid/widget/Spinner;->layout(IIII)V

    goto :goto_1

    .line 500
    .end local v1    # "top":I
    .end local v2    # "bottom":I
    :cond_1
    :goto_0
    nop

    .line 506
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 448
    const/4 v0, 0x0

    .line 450
    .local v0, "childWidth":I
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->getRowContentHeight()I

    move-result v1

    .line 451
    .local v1, "rowHeight":I
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 453
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 454
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, p1, v1}, Landroidx/slice/widget/RowView;->measureChildWithExactHeight(Landroid/view/View;II)V

    .line 456
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    .line 458
    :cond_0
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 460
    :goto_0
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v4, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-nez v4, :cond_2

    .line 463
    sget-boolean v4, Landroidx/slice/widget/RowView;->sCanSpecifyLargerRangeBarHeight:Z

    if-eqz v4, :cond_1

    .line 464
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 465
    invoke-virtual {v4}, Landroidx/slice/widget/SliceStyle;->getRowRangeHeight()I

    move-result v4

    .line 464
    invoke-direct {p0, v3, p1, v4}, Landroidx/slice/widget/RowView;->measureChildWithExactHeight(Landroid/view/View;II)V

    goto :goto_1

    .line 467
    :cond_1
    nop

    .line 468
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 467
    invoke-virtual {p0, v3, p1, v4}, Landroidx/slice/widget/RowView;->measureChild(Landroid/view/View;II)V

    .line 472
    :goto_1
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Landroidx/slice/widget/RowView;->mMeasuredRangeHeight:I

    .line 473
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    .line 474
    :cond_2
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    if-eqz v3, :cond_3

    .line 475
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 476
    invoke-virtual {v4}, Landroidx/slice/widget/SliceStyle;->getRowSelectionHeight()I

    move-result v4

    .line 475
    invoke-direct {p0, v3, p1, v4}, Landroidx/slice/widget/RowView;->measureChildWithExactHeight(Landroid/view/View;II)V

    .line 477
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 480
    :cond_3
    :goto_2
    iget v3, p0, Landroidx/slice/widget/RowView;->mInsetStart:I

    add-int/2addr v3, v0

    iget v4, p0, Landroidx/slice/widget/RowView;->mInsetEnd:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 481
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v3, :cond_4

    iget-object v4, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v5, p0, Landroidx/slice/widget/RowView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v3, v4, v5}, Landroidx/slice/widget/RowContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v3

    goto :goto_3

    .line 482
    :cond_4
    move v3, v2

    :goto_3
    nop

    .line 483
    .local v3, "rowContentHeight":I
    invoke-static {v0, p1, v2}, Landroidx/slice/widget/RowView;->resolveSizeAndState(III)I

    move-result v2

    iget v4, p0, Landroidx/slice/widget/RowView;->mInsetTop:I

    add-int/2addr v4, v3

    iget v5, p0, Landroidx/slice/widget/RowView;->mInsetBottom:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v2, v4}, Landroidx/slice/widget/RowView;->setMeasuredDimension(II)V

    .line 485
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 1359
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public resetView()V
    .locals 1

    .line 1375
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 1376
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1377
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->resetViewState()V

    .line 1378
    return-void
.end method

.method sendSliderValue()V
    .locals 5

    .line 933
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    .line 934
    return-void

    .line 938
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/slice/widget/RowView;->mLastSentRangeUpdate:J

    .line 939
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x10000000

    .line 940
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.app.slice.extra.RANGE_VALUE"

    iget v4, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    .line 941
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 939
    invoke-virtual {v0, v1, v2}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V

    .line 942
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v0, :cond_1

    .line 943
    new-instance v0, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getMode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x4

    iget v4, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 945
    .local v0, "info":Landroidx/slice/widget/EventInfo;
    iget v1, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    iput v1, v0, Landroidx/slice/widget/EventInfo;->state:I

    .line 946
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    invoke-interface {v1, v0, v2}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    .end local v0    # "info":Landroidx/slice/widget/EventInfo;
    :cond_1
    goto :goto_0

    .line 948
    :catch_0
    move-exception v0

    .line 949
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "RowView"

    const-string v2, "PendingIntent for slice cannot be sent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 951
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_0
    return-void
.end method

.method public setAllowTwoLines(Z)V
    .locals 1
    .param p1, "allowTwoLines"    # Z

    .line 434
    iput-boolean p1, p0, Landroidx/slice/widget/RowView;->mAllowTwoLines:Z

    .line 435
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_0

    .line 436
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/slice/widget/RowView;->populateViews(Z)V

    .line 438
    :cond_0
    return-void
.end method

.method public setInsets(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 322
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    .line 323
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/slice/widget/RowView;->setPadding(IIII)V

    .line 324
    return-void
.end method

.method public setLastUpdated(J)V
    .locals 1
    .param p1, "lastUpdated"    # J

    .line 714
    invoke-super {p0, p1, p2}, Landroidx/slice/widget/SliceChildView;->setLastUpdated(J)V

    .line 715
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_1

    .line 716
    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 717
    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 716
    :goto_0
    invoke-direct {p0, v0}, Landroidx/slice/widget/RowView;->addSubtitle(Z)V

    .line 719
    :cond_1
    return-void
.end method

.method public setLoadingActions(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;)V"
        }
    .end annotation

    .line 1156
    .local p1, "actions":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceItem;>;"
    if-nez p1, :cond_0

    .line 1157
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1158
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    goto :goto_0

    .line 1160
    :cond_0
    iput-object p1, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    .line 1162
    :goto_0
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->updateEndItems()V

    .line 1163
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V

    .line 1164
    return-void
.end method

.method public setShowLastUpdated(Z)V
    .locals 1
    .param p1, "showLastUpdated"    # Z

    .line 422
    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setShowLastUpdated(Z)V

    .line 423
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_0

    .line 424
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/slice/widget/RowView;->populateViews(Z)V

    .line 426
    :cond_0
    return-void
.end method

.method public setSliceActions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;)V"
        }
    .end annotation

    .line 410
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    iput-object p1, p0, Landroidx/slice/widget/RowView;->mHeaderActions:Ljava/util/List;

    .line 411
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_0

    .line 412
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->updateEndItems()V

    .line 414
    :cond_0
    return-void
.end method

.method public setSliceItem(Landroidx/slice/widget/SliceContent;ZIILandroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 8
    .param p1, "content"    # Landroidx/slice/widget/SliceContent;
    .param p2, "isHeader"    # Z
    .param p3, "index"    # I
    .param p4, "rowCount"    # I
    .param p5, "observer"    # Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 514
    invoke-virtual {p0, p5}, Landroidx/slice/widget/RowView;->setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, "isUpdate":Z
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroidx/slice/widget/RowContent;->isValid()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 519
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v2, :cond_0

    .line 520
    new-instance v3, Landroidx/slice/SliceStructure;

    invoke-virtual {v2}, Landroidx/slice/widget/RowContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-direct {v3, v2}, Landroidx/slice/SliceStructure;-><init>(Landroidx/slice/SliceItem;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move-object v2, v3

    .line 521
    .local v2, "prevSs":Landroidx/slice/SliceStructure;
    new-instance v3, Landroidx/slice/SliceStructure;

    invoke-virtual {p1}, Landroidx/slice/widget/SliceContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/slice/SliceStructure;-><init>(Landroidx/slice/Slice;)V

    .line 522
    .local v3, "newSs":Landroidx/slice/SliceStructure;
    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Landroidx/slice/SliceStructure;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v1

    .line 523
    .local v5, "sameStructure":Z
    :goto_1
    if-eqz v2, :cond_2

    .line 524
    invoke-virtual {v2}, Landroidx/slice/SliceStructure;->getUri()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Landroidx/slice/SliceStructure;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3}, Landroidx/slice/SliceStructure;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v1

    .line 525
    .local v6, "sameSliceId":Z
    :goto_2
    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    move v0, v4

    .line 527
    .end local v2    # "prevSs":Landroidx/slice/SliceStructure;
    .end local v3    # "newSs":Landroidx/slice/SliceStructure;
    .end local v5    # "sameStructure":Z
    .end local v6    # "sameSliceId":Z
    :cond_4
    iput-boolean v1, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    .line 528
    iput-boolean p2, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    .line 529
    move-object v1, p1

    check-cast v1, Landroidx/slice/widget/RowContent;

    iput-object v1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 530
    iput p3, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    .line 531
    invoke-direct {p0, v0}, Landroidx/slice/widget/RowView;->populateViews(Z)V

    .line 532
    return-void
.end method

.method public setStyle(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/RowStyle;)V
    .locals 0
    .param p1, "styles"    # Landroidx/slice/widget/SliceStyle;
    .param p2, "rowStyle"    # Landroidx/slice/widget/RowStyle;

    .line 244
    invoke-super {p0, p1, p2}, Landroidx/slice/widget/SliceChildView;->setStyle(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/RowStyle;)V

    .line 245
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->applyRowStyle()V

    .line 246
    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tintColor"    # I

    .line 394
    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    .line 395
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_0

    .line 397
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/slice/widget/RowView;->populateViews(Z)V

    .line 399
    :cond_0
    return-void
.end method

.method updateActionSpinner()V
    .locals 2

    .line 1147
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActionSpinner:Landroid/widget/ProgressBar;

    iget-boolean v1, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1148
    return-void
.end method
