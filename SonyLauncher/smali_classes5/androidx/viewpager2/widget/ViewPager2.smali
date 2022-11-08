.class public final Landroidx/viewpager2/widget/ViewPager2;
.super Landroid/view/ViewGroup;
.source "ViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager2/widget/ViewPager2$DataSetChangeObserver;,
        Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;,
        Landroidx/viewpager2/widget/ViewPager2$BasicAccessibilityProvider;,
        Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;,
        Landroidx/viewpager2/widget/ViewPager2$PageTransformer;,
        Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;,
        Landroidx/viewpager2/widget/ViewPager2$SmoothScrollToPosition;,
        Landroidx/viewpager2/widget/ViewPager2$PagerSnapHelperImpl;,
        Landroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;,
        Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;,
        Landroidx/viewpager2/widget/ViewPager2$SavedState;,
        Landroidx/viewpager2/widget/ViewPager2$OffscreenPageLimit;,
        Landroidx/viewpager2/widget/ViewPager2$ScrollState;,
        Landroidx/viewpager2/widget/ViewPager2$Orientation;
    }
.end annotation


# static fields
.field private static final EMPTY_INSETS:Landroidx/core/view/WindowInsetsCompat;

.field public static final OFFSCREEN_PAGE_LIMIT_DEFAULT:I = -0x1

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field static sFeatureEnhancedA11yEnabled:Z


# instance fields
.field mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

.field mCurrentItem:I

.field private mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field mCurrentItemDirty:Z

.field private mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

.field private mFakeDragger:Landroidx/viewpager2/widget/FakeDrag;

.field mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mOffscreenPageLimit:I

.field private mPageChangeEventDispatcher:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

.field private mPageTransformerAdapter:Landroidx/viewpager2/widget/PageTransformerAdapter;

.field private mPagerSnapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;

.field private mPendingAdapterState:Landroid/os/Parcelable;

.field private mPendingCurrentItem:I

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

.field private mSavedItemAnimatorPresent:Z

.field mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

.field private final mTmpChildRect:Landroid/graphics/Rect;

.field private final mTmpContainerRect:Landroid/graphics/Rect;

.field private mUserInputEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 123
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/viewpager2/widget/ViewPager2;->sFeatureEnhancedA11yEnabled:Z

    .line 128
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v0}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    sput-object v0, Landroidx/viewpager2/widget/ViewPager2;->EMPTY_INSETS:Landroidx/core/view/WindowInsetsCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 164
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 131
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    .line 134
    new-instance v0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(I)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    .line 139
    new-instance v1, Landroidx/viewpager2/widget/ViewPager2$1;

    invoke-direct {v1, p0}, Landroidx/viewpager2/widget/ViewPager2$1;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 149
    const/4 v1, -0x1

    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    .line 157
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 158
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    .line 160
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    .line 165
    invoke-direct {p0, p1, v2}, Landroidx/viewpager2/widget/ViewPager2;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 169
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    .line 134
    new-instance v0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(I)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    .line 139
    new-instance v1, Landroidx/viewpager2/widget/ViewPager2$1;

    invoke-direct {v1, p0}, Landroidx/viewpager2/widget/ViewPager2$1;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 149
    const/4 v1, -0x1

    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    .line 157
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 158
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    .line 160
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    .line 170
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 174
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    .line 134
    new-instance v0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(I)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    .line 139
    new-instance v1, Landroidx/viewpager2/widget/ViewPager2$1;

    invoke-direct {v1, p0}, Landroidx/viewpager2/widget/ViewPager2$1;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 149
    const/4 v1, -0x1

    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    .line 157
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 158
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    .line 160
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    .line 175
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 181
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 131
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    .line 134
    new-instance v0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(I)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    .line 139
    new-instance v1, Landroidx/viewpager2/widget/ViewPager2$1;

    invoke-direct {v1, p0}, Landroidx/viewpager2/widget/ViewPager2$1;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 149
    const/4 v1, -0x1

    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    .line 157
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 158
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    .line 160
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    .line 182
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 183
    return-void
.end method

.method private consumeAllInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 1003
    sget-object v0, Landroidx/viewpager2/widget/ViewPager2;->EMPTY_INSETS:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1004
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    .line 1008
    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method private enforceChildFillListener()Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;
    .locals 1

    .line 270
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$4;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$4;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    return-object v0
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 186
    sget-boolean v0, Landroidx/viewpager2/widget/ViewPager2;->sFeatureEnhancedA11yEnabled:Z

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    goto :goto_0

    .line 188
    :cond_0
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$BasicAccessibilityProvider;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$BasicAccessibilityProvider;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    :goto_0
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    .line 190
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-direct {v0, p0, p1}, Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 191
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setId(I)V

    .line 192
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 194
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;

    invoke-direct {v0, p0, p1}, Landroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 195
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 196
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollingTouchSlop(I)V

    .line 197
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 199
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2;->enforceChildFillListener()Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 205
    new-instance v0, Landroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    .line 207
    new-instance v1, Landroidx/viewpager2/widget/FakeDrag;

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v1, p0, v0, v2}, Landroidx/viewpager2/widget/FakeDrag;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroidx/viewpager2/widget/ScrollEventAdapter;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mFakeDragger:Landroidx/viewpager2/widget/FakeDrag;

    .line 208
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$PagerSnapHelperImpl;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$PagerSnapHelperImpl;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPagerSnapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;

    .line 209
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/PagerSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 212
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 214
    new-instance v0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(I)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 215
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->setOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 219
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$2;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$2;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 237
    .local v0, "currentItemUpdater":Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
    new-instance v1, Landroidx/viewpager2/widget/ViewPager2$3;

    invoke-direct {v1, p0}, Landroidx/viewpager2/widget/ViewPager2$3;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 249
    .local v1, "focusClearer":Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    invoke-virtual {v2, v0}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->addOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 250
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    invoke-virtual {v2, v1}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->addOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 253
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    iget-object v4, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v3, v4}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onInitialize(Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 254
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    invoke-virtual {v2, v3}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->addOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 258
    new-instance v2, Landroidx/viewpager2/widget/PageTransformerAdapter;

    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v3}, Landroidx/viewpager2/widget/PageTransformerAdapter;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Landroidx/viewpager2/widget/PageTransformerAdapter;

    .line 259
    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    invoke-virtual {v3, v2}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->addOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 261
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Landroidx/viewpager2/widget/ViewPager2;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 262
    return-void
.end method

.method private registerCurrentItemDataSetTracker(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    .line 475
    .local p1, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    if-eqz p1, :cond_0

    .line 476
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 478
    :cond_0
    return-void
.end method

.method private restorePendingState()V
    .locals 5

    .line 346
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 348
    return-void

    .line 350
    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 351
    .local v0, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    if-nez v0, :cond_1

    .line 352
    return-void

    .line 354
    :cond_1
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingAdapterState:Landroid/os/Parcelable;

    if-eqz v2, :cond_3

    .line 355
    instance-of v3, v0, Landroidx/viewpager2/adapter/StatefulAdapter;

    if-eqz v3, :cond_2

    .line 356
    move-object v3, v0

    check-cast v3, Landroidx/viewpager2/adapter/StatefulAdapter;

    invoke-interface {v3, v2}, Landroidx/viewpager2/adapter/StatefulAdapter;->restoreState(Landroid/os/Parcelable;)V

    .line 358
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingAdapterState:Landroid/os/Parcelable;

    .line 361
    :cond_3
    const/4 v2, 0x0

    iget v3, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    .line 362
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    .line 363
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 364
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onRestorePendingState()V

    .line 365
    return-void
.end method

.method private setOrientation(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 299
    sget-object v0, Landroidx/viewpager2/R$styleable;->ViewPager2:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 300
    .local v0, "a":Landroid/content/res/TypedArray;
    sget-object v3, Landroidx/viewpager2/R$styleable;->ViewPager2:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v0

    invoke-static/range {v1 .. v7}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 303
    :try_start_0
    sget v1, Landroidx/viewpager2/R$styleable;->ViewPager2_android_orientation:I

    const/4 v2, 0x0

    .line 304
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 303
    invoke-virtual {p0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 307
    nop

    .line 308
    return-void

    .line 306
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 307
    throw v1
.end method

.method private unregisterCurrentItemDataSetTracker(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    .line 481
    .local p1, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    if-eqz p1, :cond_0

    .line 482
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 484
    :cond_0
    return-void
.end method


# virtual methods
.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .locals 1
    .param p1, "decor"    # Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 1201
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1202
    return-void
.end method

.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V
    .locals 1
    .param p1, "decor"    # Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .param p2, "index"    # I

    .line 1220
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    .line 1221
    return-void
.end method

.method public beginFakeDrag()Z
    .locals 1

    .line 717
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mFakeDragger:Landroidx/viewpager2/widget/FakeDrag;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/FakeDrag;->beginFakeDrag()Z

    move-result v0

    return v0
.end method

.method public canScrollHorizontally(I)Z
    .locals 1
    .param p1, "direction"    # I

    .line 859
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    return v0
.end method

.method public canScrollVertically(I)Z
    .locals 1
    .param p1, "direction"    # I

    .line 864
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 370
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 371
    .local v0, "state":Landroid/os/Parcelable;
    instance-of v1, v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    if-eqz v1, :cond_0

    .line 372
    move-object v1, v0

    check-cast v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    iget v1, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mRecyclerViewId:I

    .line 373
    .local v1, "previousRvId":I
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getId()I

    move-result v2

    .line 374
    .local v2, "currentRvId":I
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 375
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 378
    .end local v1    # "previousRvId":I
    .end local v2    # "currentRvId":I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 381
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2;->restorePendingState()V

    .line 382
    return-void
.end method

.method public endFakeDrag()Z
    .locals 1

    .line 753
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mFakeDragger:Landroidx/viewpager2/widget/FakeDrag;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/FakeDrag;->endFakeDrag()Z

    move-result v0

    return v0
.end method

.method public fakeDragBy(F)Z
    .locals 1
    .param p1, "offsetPxFloat"    # F

    .line 739
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mFakeDragger:Landroidx/viewpager2/widget/FakeDrag;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/FakeDrag;->fakeDragBy(F)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 292
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->handlesGetAccessibilityClassName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onGetAccessibilityClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 295
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 488
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 679
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    return v0
.end method

.method public getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .locals 1
    .param p1, "index"    # I

    .line 1232
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v0

    return-object v0
.end method

.method public getItemDecorationCount()I
    .locals 1

    .line 1241
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .line 854
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 579
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    return v0
.end method

.method getPageSize()I
    .locals 3

    .line 562
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 563
    .local v0, "rv":Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v1

    if-nez v1, :cond_0

    .line 564
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    .line 565
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 563
    :goto_0
    return v1
.end method

.method public getScrollState()I
    .locals 1

    .line 691
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->getScrollState()I

    move-result v0

    return v0
.end method

.method public invalidateItemDecorations()V
    .locals 1

    .line 1249
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 1250
    return-void
.end method

.method public isFakeDragging()Z
    .locals 1

    .line 765
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mFakeDragger:Landroidx/viewpager2/widget/FakeDrag;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/FakeDrag;->isFakeDragging()Z

    move-result v0

    return v0
.end method

.method isRtl()Z
    .locals 2

    .line 583
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isUserInputEnabled()Z
    .locals 1

    .line 807
    iget-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 971
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 972
    .local v0, "applied":Landroid/view/WindowInsets;
    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 974
    return-object v0

    .line 984
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 985
    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/view/WindowInsets;

    invoke-direct {v4, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 984
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 997
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_1
    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->consumeAllInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 953
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 954
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 955
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 522
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v0

    .line 523
    .local v0, "width":I
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    .line 527
    .local v1, "height":I
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 528
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    sub-int v3, p4, p2

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 529
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingTop()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 530
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    sub-int v3, p5, p3

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 532
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    const v4, 0x800033

    invoke-static {v4, v0, v1, v2, v3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 533
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->layout(IIII)V

    .line 536
    iget-boolean v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    if-eqz v2, :cond_0

    .line 537
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->updateCurrentItem()V

    .line 539
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 504
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->measureChild(Landroid/view/View;II)V

    .line 505
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v0

    .line 506
    .local v0, "width":I
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    .line 507
    .local v1, "height":I
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredState()I

    move-result v2

    .line 509
    .local v2, "childState":I
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 510
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 512
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 513
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 515
    invoke-static {v0, p1, v2}, Landroidx/viewpager2/widget/ViewPager2;->resolveSizeAndState(III)I

    move-result v3

    shl-int/lit8 v4, v2, 0x10

    .line 516
    invoke-static {v1, p2, v4}, Landroidx/viewpager2/widget/ViewPager2;->resolveSizeAndState(III)I

    move-result v4

    .line 515
    invoke-virtual {p0, v3, v4}, Landroidx/viewpager2/widget/ViewPager2;->setMeasuredDimension(II)V

    .line 518
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 334
    instance-of v0, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    if-nez v0, :cond_0

    .line 335
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 336
    return-void

    .line 339
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    .line 340
    .local v0, "ss":Landroidx/viewpager2/widget/ViewPager2$SavedState;
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 341
    iget v1, v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mCurrentItem:I

    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    .line 342
    iget-object v1, v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mAdapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingAdapterState:Landroid/os/Parcelable;

    .line 343
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 314
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 315
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    invoke-direct {v1, v0}, Landroidx/viewpager2/widget/ViewPager2$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 317
    .local v1, "ss":Landroidx/viewpager2/widget/ViewPager2$SavedState;
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getId()I

    move-result v2

    iput v2, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mRecyclerViewId:I

    .line 318
    iget v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    :cond_0
    iput v2, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mCurrentItem:I

    .line 320
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingAdapterState:Landroid/os/Parcelable;

    if-eqz v2, :cond_1

    .line 321
    iput-object v2, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mAdapterState:Landroid/os/Parcelable;

    goto :goto_0

    .line 323
    :cond_1
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    .line 324
    .local v2, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    instance-of v3, v2, Landroidx/viewpager2/adapter/StatefulAdapter;

    if-eqz v3, :cond_2

    .line 325
    move-object v3, v2

    check-cast v3, Landroidx/viewpager2/adapter/StatefulAdapter;

    invoke-interface {v3}, Landroidx/viewpager2/adapter/StatefulAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v3

    iput-object v3, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mAdapterState:Landroid/os/Parcelable;

    .line 329
    .end local v2    # "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    :cond_2
    :goto_0
    return-object v1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 494
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support direct child views"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 960
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->handlesPerformAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onPerformAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 963
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V
    .locals 1
    .param p1, "callback"    # Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 876
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->addOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 877
    return-void
.end method

.method public removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .locals 1
    .param p1, "decor"    # Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 1272
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1273
    return-void
.end method

.method public removeItemDecorationAt(I)V
    .locals 1
    .param p1, "index"    # I

    .line 1259
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    .line 1260
    return-void
.end method

.method public requestTransform()V
    .locals 6

    .line 934
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Landroidx/viewpager2/widget/PageTransformerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/PageTransformerAdapter;->getPageTransformer()Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 935
    return-void

    .line 937
    :cond_0
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->getRelativeScrollPosition()D

    move-result-wide v0

    .line 938
    .local v0, "relativePosition":D
    double-to-int v2, v0

    .line 939
    .local v2, "position":I
    int-to-double v3, v2

    sub-double v3, v0, v3

    double-to-float v3, v3

    .line 940
    .local v3, "positionOffset":F
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPageSize()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 941
    .local v4, "positionOffsetPx":I
    iget-object v5, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Landroidx/viewpager2/widget/PageTransformerAdapter;

    invoke-virtual {v5, v2, v3, v4}, Landroidx/viewpager2/widget/PageTransformerAdapter;->onPageScrolled(IFI)V

    .line 942
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 464
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 465
    .local v0, "currentAdapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onDetachAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 466
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ViewPager2;->unregisterCurrentItemDataSetTracker(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 467
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 468
    const/4 v1, 0x0

    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    .line 469
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2;->restorePendingState()V

    .line 470
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v1, p1}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onAttachAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 471
    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->registerCurrentItemDataSetTracker(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 472
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "item"    # I

    .line 595
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 596
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .line 607
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 611
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItemInternal(IZ)V

    .line 612
    return-void

    .line 608
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change current item when ViewPager2 is fake dragging"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setCurrentItemInternal(IZ)V
    .locals 7
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .line 618
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 619
    .local v0, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 621
    iget v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 622
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    .line 624
    :cond_0
    return-void

    .line 626
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-gtz v2, :cond_2

    .line 628
    return-void

    .line 630
    :cond_2
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 631
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 633
    iget v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 635
    return-void

    .line 637
    :cond_3
    iget v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    if-ne p1, v1, :cond_4

    if-eqz p2, :cond_4

    .line 640
    return-void

    .line 645
    :cond_4
    int-to-double v1, v1

    .line 646
    .local v1, "previousItem":D
    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    .line 647
    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v3}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onSetNewCurrentItem()V

    .line 649
    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v3}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isIdle()Z

    move-result v3

    if-nez v3, :cond_5

    .line 651
    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v3}, Landroidx/viewpager2/widget/ScrollEventAdapter;->getRelativeScrollPosition()D

    move-result-wide v1

    .line 656
    :cond_5
    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v3, p1, p2}, Landroidx/viewpager2/widget/ScrollEventAdapter;->notifyProgrammaticScroll(IZ)V

    .line 657
    if-nez p2, :cond_6

    .line 658
    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 659
    return-void

    .line 663
    :cond_6
    int-to-double v3, p1

    sub-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_8

    .line 664
    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    int-to-double v4, p1

    cmpl-double v4, v4, v1

    if-lez v4, :cond_7

    add-int/lit8 v4, p1, -0x3

    goto :goto_0

    :cond_7
    add-int/lit8 v4, p1, 0x3

    :goto_0
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 666
    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/viewpager2/widget/ViewPager2$SmoothScrollToPosition;

    invoke-direct {v4, p1, v3}, Landroidx/viewpager2/widget/ViewPager2$SmoothScrollToPosition;-><init>(ILandroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 668
    :cond_8
    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 670
    :goto_1
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .line 947
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 948
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onSetLayoutDirection()V

    .line 949
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 2
    .param p1, "limit"    # I

    .line 836
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 837
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 840
    :cond_1
    :goto_0
    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    .line 842
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 843
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .line 574
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 575
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onSetOrientation()V

    .line 576
    return-void
.end method

.method public setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V
    .locals 3
    .param p1, "transformer"    # Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    .line 904
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 905
    iget-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    if-nez v1, :cond_0

    .line 906
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 907
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    .line 909
    :cond_0
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    .line 911
    :cond_1
    iget-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    if-eqz v1, :cond_2

    .line 912
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 913
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 914
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    .line 920
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Landroidx/viewpager2/widget/PageTransformerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/PageTransformerAdapter;->getPageTransformer()Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 921
    return-void

    .line 923
    :cond_3
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Landroidx/viewpager2/widget/PageTransformerAdapter;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/PageTransformerAdapter;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 924
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->requestTransform()V

    .line 925
    return-void
.end method

.method public setUserInputEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 796
    iput-boolean p1, p0, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    .line 797
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onSetUserInputEnabled()V

    .line 798
    return-void
.end method

.method snapToPage()V
    .locals 5

    .line 774
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPagerSnapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/PagerSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v0

    .line 775
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 776
    return-void

    .line 778
    :cond_0
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mPagerSnapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/PagerSnapHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v1

    .line 780
    .local v1, "snapDistance":[I
    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    if-nez v3, :cond_1

    aget v3, v1, v4

    if-eqz v3, :cond_2

    .line 781
    :cond_1
    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    aget v2, v1, v2

    aget v4, v1, v4

    invoke-virtual {v3, v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 783
    :cond_2
    return-void
.end method

.method public unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V
    .locals 1
    .param p1, "callback"    # Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 886
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->removeOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 887
    return-void
.end method

.method updateCurrentItem()V
    .locals 3

    .line 543
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->mPagerSnapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;

    if-eqz v0, :cond_2

    .line 547
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/PagerSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v0

    .line 548
    .local v0, "snapView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 549
    return-void

    .line 551
    :cond_0
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 553
    .local v1, "snapPosition":I
    iget v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getScrollState()I

    move-result v2

    if-nez v2, :cond_1

    .line 555
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    invoke-virtual {v2, v1}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->onPageSelected(I)V

    .line 558
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    .line 559
    return-void

    .line 544
    .end local v0    # "snapView":Landroid/view/View;
    .end local v1    # "snapPosition":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Design assumption violated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
