.class Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;
.super Ljava/lang/Object;
.source "OverviewActionsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/OverviewActionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverviewAction"
.end annotation


# instance fields
.field final mActionResId:I

.field final mContext:Landroid/content/Context;

.field final mIconResId:I

.field final mOnClickListener:Landroid/view/View$OnClickListener;

.field final mSpaceResId:I

.field final synthetic this$0:Lcom/android/quickstep/views/OverviewActionsView;


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/OverviewActionsView;Landroid/content/Context;IIILandroid/view/View$OnClickListener;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "actionResId"    # I
    .param p4, "spaceResId"    # I
    .param p5, "iconResId"    # I
    .param p6, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 346
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>.OverviewAction;"
    iput-object p1, p0, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->this$0:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    iput-object p2, p0, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->mContext:Landroid/content/Context;

    .line 348
    iput-object p6, p0, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 349
    iput p3, p0, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->mActionResId:I

    .line 350
    iput p4, p0, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->mSpaceResId:I

    .line 351
    iput p5, p0, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->mIconResId:I

    .line 352
    return-void
.end method

.method static synthetic lambda$updateLayout$0(Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;)Z
    .locals 1
    .param p0, "a"    # Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;

    .line 382
    invoke-virtual {p0}, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->isAvailable()Z

    move-result v0

    return v0
.end method


# virtual methods
.method isAvailable()Z
    .locals 1

    .line 355
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>.OverviewAction;"
    const/4 v0, 0x1

    return v0
.end method

.method onFinishInflate()V
    .locals 2

    .line 359
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>.OverviewAction;"
    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->this$0:Lcom/android/quickstep/views/OverviewActionsView;

    iget v1, p0, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->mActionResId:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OverviewActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 360
    .local v0, "actionView":Landroid/view/View;
    iget-object v1, p0, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    invoke-virtual {p0}, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->this$0:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-static {v1}, Lcom/android/quickstep/views/OverviewActionsView;->-$$Nest$fgetmHiddenFlags(Lcom/android/quickstep/views/OverviewActionsView;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->setVisibility(I)V

    .line 364
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->updateLayout()V

    .line 365
    return-void
.end method

.method setViewEnabled(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .line 376
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>.OverviewAction;"
    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->this$0:Lcom/android/quickstep/views/OverviewActionsView;

    iget v1, p0, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->mActionResId:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OverviewActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 377
    .local v0, "actionView":Landroid/view/View;
    invoke-static {v0, p1}, Lcom/android/quickstep/util/LayoutUtils;->setViewEnabled(Landroid/view/View;Z)V

    .line 378
    return-void
.end method

.method setVisibility(I)V
    .locals 6
    .param p1, "hiddenFlags"    # I

    .line 368
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>.OverviewAction;"
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 369
    .local v1, "isHidden":Z
    :goto_0
    iget-object v2, p0, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->this$0:Lcom/android/quickstep/views/OverviewActionsView;

    iget v3, p0, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->mActionResId:I

    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/OverviewActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 370
    .local v2, "actionView":Landroid/view/View;
    iget-object v3, p0, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->this$0:Lcom/android/quickstep/views/OverviewActionsView;

    iget v4, p0, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->mSpaceResId:I

    invoke-virtual {v3, v4}, Lcom/android/quickstep/views/OverviewActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Space;

    .line 371
    .local v3, "space":Landroid/widget/Space;
    const/16 v4, 0x8

    if-eqz v1, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 372
    if-eqz v1, :cond_2

    move v0, v4

    :cond_2
    invoke-virtual {v3, v0}, Landroid/widget/Space;->setVisibility(I)V

    .line 373
    return-void
.end method

.method updateLayout()V
    .locals 7

    .line 381
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>.OverviewAction;"
    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->this$0:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-static {v0}, Lcom/android/quickstep/views/OverviewActionsView;->-$$Nest$fgetmOverviewActions(Lcom/android/quickstep/views/OverviewActionsView;)Ljava/util/List;

    move-result-object v0

    .line 382
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    long-to-int v0, v0

    .line 383
    .local v0, "actionNum":I
    iget-object v1, p0, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->this$0:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/OverviewActionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    move v1, v2

    .line 385
    .local v1, "isPort":Z
    iget-object v2, p0, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->this$0:Lcom/android/quickstep/views/OverviewActionsView;

    iget v4, p0, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->mActionResId:I

    invoke-virtual {v2, v4}, Lcom/android/quickstep/views/OverviewActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 386
    .local v2, "button":Landroid/widget/Button;
    if-eqz v1, :cond_1

    .line 387
    sget-object v4, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v5, p0, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->mContext:Landroid/content/Context;

    .line 388
    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v4}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sget-object v5, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v6, p0, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->mContext:Landroid/content/Context;

    .line 389
    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v5}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 387
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 390
    .local v4, "parentWidth":I
    iget v5, p0, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->mIconResId:I

    invoke-virtual {v2, v3, v5, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 391
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 392
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinWidth(I)V

    .line 393
    div-int v3, v4, v0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 394
    .end local v4    # "parentWidth":I
    goto :goto_2

    .line 395
    :cond_1
    sget-object v4, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v5, p0, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->mContext:Landroid/content/Context;

    .line 396
    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v4}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sget-object v5, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v6, p0, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->mContext:Landroid/content/Context;

    .line 397
    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v5}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 395
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 398
    .restart local v4    # "parentWidth":I
    iget v5, p0, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->mIconResId:I

    invoke-virtual {v2, v5, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 399
    iget-object v3, p0, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->this$0:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-static {v3}, Lcom/android/quickstep/views/OverviewActionsView;->-$$Nest$fgetmInsets(Lcom/android/quickstep/views/OverviewActionsView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->this$0:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-static {v3}, Lcom/android/quickstep/views/OverviewActionsView;->-$$Nest$fgetmInsets(Lcom/android/quickstep/views/OverviewActionsView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->this$0:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-static {v3}, Lcom/android/quickstep/views/OverviewActionsView;->-$$Nest$fgetmInsets(Lcom/android/quickstep/views/OverviewActionsView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 400
    .local v3, "navigaWidth":I
    :goto_1
    sub-int v5, v4, v3

    div-int/2addr v5, v0

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 402
    .end local v3    # "navigaWidth":I
    .end local v4    # "parentWidth":I
    :goto_2
    return-void
.end method
