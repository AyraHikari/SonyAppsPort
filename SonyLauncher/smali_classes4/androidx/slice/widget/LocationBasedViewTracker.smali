.class public Landroidx/slice/widget/LocationBasedViewTracker;
.super Ljava/lang/Object;
.source "LocationBasedViewTracker.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;
    }
.end annotation


# static fields
.field private static final A11Y_FOCUS:Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;

.field private static final INPUT_FOCUS:Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;


# instance fields
.field private final mFocusRect:Landroid/graphics/Rect;

.field private final mParent:Landroid/view/ViewGroup;

.field private final mSelectionLogic:Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Landroidx/slice/widget/LocationBasedViewTracker$1;

    invoke-direct {v0}, Landroidx/slice/widget/LocationBasedViewTracker$1;-><init>()V

    sput-object v0, Landroidx/slice/widget/LocationBasedViewTracker;->INPUT_FOCUS:Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;

    .line 48
    new-instance v0, Landroidx/slice/widget/LocationBasedViewTracker$2;

    invoke-direct {v0}, Landroidx/slice/widget/LocationBasedViewTracker$2;-><init>()V

    sput-object v0, Landroidx/slice/widget/LocationBasedViewTracker;->A11Y_FOCUS:Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "selected"    # Landroid/view/View;
    .param p3, "selectionLogic"    # Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/LocationBasedViewTracker;->mFocusRect:Landroid/graphics/Rect;

    .line 61
    iput-object p1, p0, Landroidx/slice/widget/LocationBasedViewTracker;->mParent:Landroid/view/ViewGroup;

    .line 62
    iput-object p3, p0, Landroidx/slice/widget/LocationBasedViewTracker;->mSelectionLogic:Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;

    .line 64
    invoke-virtual {p2, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 65
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 69
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 70
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 71
    return-void
.end method

.method public static trackA11yFocus(Landroid/view/ViewGroup;)V
    .locals 5
    .param p0, "parent"    # Landroid/view/ViewGroup;

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 130
    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 133
    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    return-void

    .line 136
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 138
    const/4 v1, 0x0

    .line 139
    .local v1, "focused":Landroid/view/View;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 140
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 141
    move-object v1, v3

    .line 142
    goto :goto_1

    .line 144
    .end local v3    # "child":Landroid/view/View;
    :cond_2
    goto :goto_0

    .line 145
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 146
    new-instance v2, Landroidx/slice/widget/LocationBasedViewTracker;

    sget-object v3, Landroidx/slice/widget/LocationBasedViewTracker;->A11Y_FOCUS:Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;

    invoke-direct {v2, p0, v1, v3}, Landroidx/slice/widget/LocationBasedViewTracker;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;)V

    .line 148
    :cond_4
    return-void
.end method

.method public static trackInputFocused(Landroid/view/ViewGroup;)V
    .locals 3
    .param p0, "parent"    # Landroid/view/ViewGroup;

    .line 117
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 118
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 119
    new-instance v1, Landroidx/slice/widget/LocationBasedViewTracker;

    sget-object v2, Landroidx/slice/widget/LocationBasedViewTracker;->INPUT_FOCUS:Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;

    invoke-direct {v1, p0, v0, v2}, Landroidx/slice/widget/LocationBasedViewTracker;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;)V

    .line 121
    :cond_0
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 76
    iget-object v0, p0, Landroidx/slice/widget/LocationBasedViewTracker;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 77
    iget-object v0, p0, Landroidx/slice/widget/LocationBasedViewTracker;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 78
    return-void
.end method

.method public run()V
    .locals 9

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Landroidx/slice/widget/LocationBasedViewTracker;->mParent:Landroid/view/ViewGroup;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 85
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 86
    .local v1, "temp":Landroid/graphics/Rect;
    const v2, 0x7fffffff

    .line 87
    .local v2, "oldCloseness":I
    const/4 v3, 0x0

    .line 89
    .local v3, "closestView":Landroid/view/View;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 90
    .local v5, "v":Landroid/view/View;
    invoke-virtual {v5, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 91
    iget-object v6, p0, Landroidx/slice/widget/LocationBasedViewTracker;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 92
    iget-object v6, p0, Landroidx/slice/widget/LocationBasedViewTracker;->mFocusRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 93
    goto :goto_0

    .line 97
    :cond_0
    iget-object v6, p0, Landroidx/slice/widget/LocationBasedViewTracker;->mFocusRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget-object v7, p0, Landroidx/slice/widget/LocationBasedViewTracker;->mFocusRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    .line 98
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Landroidx/slice/widget/LocationBasedViewTracker;->mFocusRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    .line 99
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Landroidx/slice/widget/LocationBasedViewTracker;->mFocusRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    .line 100
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    .line 101
    .local v6, "closeness":I
    if-le v2, v6, :cond_1

    .line 102
    move v2, v6

    .line 103
    move-object v3, v5

    .line 105
    .end local v5    # "v":Landroid/view/View;
    .end local v6    # "closeness":I
    :cond_1
    goto :goto_0

    .line 106
    :cond_2
    if-eqz v3, :cond_3

    .line 107
    iget-object v4, p0, Landroidx/slice/widget/LocationBasedViewTracker;->mSelectionLogic:Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;

    invoke-interface {v4, v3}, Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;->selectView(Landroid/view/View;)V

    .line 109
    :cond_3
    return-void
.end method
