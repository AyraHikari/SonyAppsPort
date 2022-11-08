.class public Lcom/android/quickstep/util/SplitScreenBounds;
.super Ljava/lang/Object;
.source "SplitScreenBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/SplitScreenBounds$OnChangeListener;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/quickstep/util/SplitScreenBounds;


# instance fields
.field private mBounds:Lcom/android/launcher3/util/WindowBounds;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/SplitScreenBounds$OnChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/android/quickstep/util/SplitScreenBounds;

    invoke-direct {v0}, Lcom/android/quickstep/util/SplitScreenBounds;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/SplitScreenBounds;->INSTANCE:Lcom/android/quickstep/util/SplitScreenBounds;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/SplitScreenBounds;->mListeners:Ljava/util/ArrayList;

    .line 49
    return-void
.end method

.method private static createDefaultWindowBounds(Landroid/content/Context;)Lcom/android/launcher3/util/WindowBounds;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 72
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    .line 73
    .local v0, "wm":Landroid/view/WindowMetrics;
    invoke-static {v0}, Lcom/android/launcher3/util/WindowBounds;->fromWindowMetrics(Landroid/view/WindowMetrics;)Lcom/android/launcher3/util/WindowBounds;

    move-result-object v1

    .line 75
    .local v1, "bounds":Lcom/android/launcher3/util/WindowBounds;
    sget-object v2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v2}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    .line 76
    .local v2, "rotation":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$dimen;->multi_window_task_divider_size:I

    .line 77
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    .line 79
    .local v3, "halfDividerSize":I
    const/4 v5, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget-object v6, v1, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/android/launcher3/util/WindowBounds;->insets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, v1, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    div-int/2addr v8, v4

    add-int/2addr v7, v8

    add-int/2addr v7, v3

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 84
    iget-object v4, v1, Lcom/android/launcher3/util/WindowBounds;->insets:Landroid/graphics/Rect;

    iput v5, v4, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 80
    :cond_1
    :goto_0
    iget-object v6, v1, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/android/launcher3/util/WindowBounds;->insets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, v1, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    div-int/2addr v8, v4

    add-int/2addr v7, v8

    add-int/2addr v7, v3

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 81
    iget-object v4, v1, Lcom/android/launcher3/util/WindowBounds;->insets:Landroid/graphics/Rect;

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 86
    :goto_1
    new-instance v4, Lcom/android/launcher3/util/WindowBounds;

    iget-object v5, v1, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    iget-object v6, v1, Lcom/android/launcher3/util/WindowBounds;->insets:Landroid/graphics/Rect;

    invoke-direct {v4, v5, v6}, Lcom/android/launcher3/util/WindowBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v4
.end method


# virtual methods
.method public addOnChangeListener(Lcom/android/quickstep/util/SplitScreenBounds$OnChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/quickstep/util/SplitScreenBounds$OnChangeListener;

    .line 90
    iget-object v0, p0, Lcom/android/quickstep/util/SplitScreenBounds;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public getSecondaryWindowBounds(Landroid/content/Context;)Lcom/android/launcher3/util/WindowBounds;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    iget-object v0, p0, Lcom/android/quickstep/util/SplitScreenBounds;->mBounds:Lcom/android/launcher3/util/WindowBounds;

    if-nez v0, :cond_0

    .line 63
    invoke-static {p1}, Lcom/android/quickstep/util/SplitScreenBounds;->createDefaultWindowBounds(Landroid/content/Context;)Lcom/android/launcher3/util/WindowBounds;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/util/SplitScreenBounds;->mBounds:Lcom/android/launcher3/util/WindowBounds;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/util/SplitScreenBounds;->mBounds:Lcom/android/launcher3/util/WindowBounds;

    return-object v0
.end method

.method public removeOnChangeListener(Lcom/android/quickstep/util/SplitScreenBounds$OnChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/quickstep/util/SplitScreenBounds$OnChangeListener;

    .line 94
    iget-object v0, p0, Lcom/android/quickstep/util/SplitScreenBounds;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public setSecondaryWindowBounds(Lcom/android/launcher3/util/WindowBounds;)V
    .locals 2
    .param p1, "bounds"    # Lcom/android/launcher3/util/WindowBounds;

    .line 53
    iget-object v0, p0, Lcom/android/quickstep/util/SplitScreenBounds;->mBounds:Lcom/android/launcher3/util/WindowBounds;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/WindowBounds;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iput-object p1, p0, Lcom/android/quickstep/util/SplitScreenBounds;->mBounds:Lcom/android/launcher3/util/WindowBounds;

    .line 55
    iget-object v0, p0, Lcom/android/quickstep/util/SplitScreenBounds;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/SplitScreenBounds$OnChangeListener;

    .line 56
    .local v1, "listener":Lcom/android/quickstep/util/SplitScreenBounds$OnChangeListener;
    invoke-interface {v1}, Lcom/android/quickstep/util/SplitScreenBounds$OnChangeListener;->onSecondaryWindowBoundsChanged()V

    .line 57
    .end local v1    # "listener":Lcom/android/quickstep/util/SplitScreenBounds$OnChangeListener;
    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method
