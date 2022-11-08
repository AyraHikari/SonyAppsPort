.class Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
.super Ljava/lang/Object;
.source "Flow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/widgets/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetsList"
.end annotation


# instance fields
.field private biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field biggestDimension:I

.field private mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field private mCount:I

.field private mHeight:I

.field private mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field private mMax:I

.field private mNbMatchConstraintsWidgets:I

.field private mOrientation:I

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field private mStartIndex:I

.field private mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field private mWidth:I

.field final synthetic this$0:Landroidx/constraintlayout/solver/widgets/Flow;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V
    .locals 2
    .param p2, "orientation"    # I
    .param p3, "left"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p4, "top"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p5, "right"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p6, "bottom"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p7, "max"    # I

    .line 345
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    .line 325
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 326
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 331
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 332
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 333
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 334
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 335
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 336
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 337
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 338
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mCount:I

    .line 339
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 340
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    .line 346
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    .line 347
    iput-object p3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 348
    iput-object p4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 349
    iput-object p5, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 350
    iput-object p6, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 351
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 352
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingTop()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 353
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingRight()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 354
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 355
    iput p7, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    .line 356
    return-void
.end method

.method static synthetic access$1900(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    .line 323
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method private recomputeDimensions()V
    .locals 8

    .line 689
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 690
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 691
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 692
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 693
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mCount:I

    .line 694
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_7

    .line 695
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v2}, Landroidx/constraintlayout/solver/widgets/Flow;->access$400(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v3, v1

    aget-object v2, v2, v3

    .line 696
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    const/16 v4, 0x8

    if-nez v3, :cond_3

    .line 697
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    .line 698
    .local v3, "width":I
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v5}, Landroidx/constraintlayout/solver/widgets/Flow;->access$000(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v5

    .line 699
    .local v5, "gap":I
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    if-ne v6, v4, :cond_0

    .line 700
    const/4 v5, 0x0

    .line 702
    :cond_0
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    add-int v6, v3, v5

    add-int/2addr v4, v6

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 703
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v4, v2, v6}, Landroidx/constraintlayout/solver/widgets/Flow;->access$300(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v4

    .line 704
    .local v4, "height":I
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v6, :cond_1

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    if-ge v6, v4, :cond_2

    .line 705
    :cond_1
    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 706
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 707
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 709
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "gap":I
    :cond_2
    goto :goto_1

    .line 710
    :cond_3
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v3, v2, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->access$200(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v3

    .line 711
    .restart local v3    # "width":I
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v5, v2, v6}, Landroidx/constraintlayout/solver/widgets/Flow;->access$300(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v5

    .line 712
    .local v5, "height":I
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v6}, Landroidx/constraintlayout/solver/widgets/Flow;->access$100(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v6

    .line 713
    .local v6, "gap":I
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    if-ne v7, v4, :cond_4

    .line 714
    const/4 v6, 0x0

    .line 716
    :cond_4
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    add-int v7, v5, v6

    add-int/2addr v4, v7

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 717
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v4, :cond_5

    iget v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    if-ge v4, v3, :cond_6

    .line 718
    :cond_5
    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 719
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 720
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 694
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v3    # "width":I
    .end local v5    # "height":I
    .end local v6    # "gap":I
    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 724
    .end local v1    # "i":I
    :cond_7
    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 5
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 401
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    const/16 v1, 0x8

    if-nez v0, :cond_4

    .line 402
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_0

    .line 403
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 405
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v0, p1, v2}, Landroidx/constraintlayout/solver/widgets/Flow;->access$200(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v0

    .line 406
    .local v0, "width":I
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v2}, Landroidx/constraintlayout/solver/widgets/Flow;->access$000(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v2

    .line 407
    .local v2, "gap":I
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 408
    const/4 v2, 0x0

    .line 410
    :cond_1
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    add-int v3, v0, v2

    add-int/2addr v1, v3

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 411
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    iget v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v1, p1, v3}, Landroidx/constraintlayout/solver/widgets/Flow;->access$300(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v1

    .line 412
    .local v1, "height":I
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v3, :cond_2

    iget v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    if-ge v3, v1, :cond_3

    .line 413
    :cond_2
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 414
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 415
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 417
    .end local v0    # "width":I
    .end local v1    # "height":I
    .end local v2    # "gap":I
    :cond_3
    goto :goto_0

    .line 418
    :cond_4
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_5

    .line 419
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 421
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v0, p1, v2}, Landroidx/constraintlayout/solver/widgets/Flow;->access$200(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v0

    .line 422
    .restart local v0    # "width":I
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    iget v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v2, p1, v3}, Landroidx/constraintlayout/solver/widgets/Flow;->access$300(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v2

    .line 423
    .local v2, "height":I
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v3}, Landroidx/constraintlayout/solver/widgets/Flow;->access$100(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v3

    .line 424
    .local v3, "gap":I
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v4

    if-ne v4, v1, :cond_6

    .line 425
    const/4 v3, 0x0

    .line 427
    :cond_6
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    add-int v4, v2, v3

    add-int/2addr v1, v4

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 428
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_7

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    if-ge v1, v0, :cond_8

    .line 429
    :cond_7
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 430
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 431
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 434
    .end local v0    # "width":I
    .end local v2    # "height":I
    .end local v3    # "gap":I
    :cond_8
    :goto_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mCount:I

    .line 435
    return-void
.end method

.method public clear()V
    .locals 2

    .line 375
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 376
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 377
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 378
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 379
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 380
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mCount:I

    .line 381
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 382
    return-void
.end method

.method public createConstraints(ZIZ)V
    .locals 16
    .param p1, "isInRtl"    # Z
    .param p2, "chainIndex"    # I
    .param p3, "isLastChain"    # Z

    .line 438
    move-object/from16 v0, p0

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mCount:I

    .line 439
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 440
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v3}, Landroidx/constraintlayout/solver/widgets/Flow;->access$400(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v3

    iget v4, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v4, v2

    aget-object v3, v3, v4

    .line 441
    .local v3, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v3, :cond_0

    .line 442
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resetAnchors()V

    .line 439
    .end local v3    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 445
    .end local v2    # "i":I
    :cond_1
    if-eqz v1, :cond_2a

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v2, :cond_2

    goto/16 :goto_e

    .line 449
    :cond_2
    const/4 v2, 0x0

    if-eqz p3, :cond_3

    if-nez p2, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v2

    .line 450
    .local v3, "singleChain":Z
    :goto_1
    const/4 v4, -0x1

    .line 451
    .local v4, "firstVisible":I
    const/4 v5, -0x1

    .line 452
    .local v5, "lastVisible":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    const/4 v7, -0x1

    if-ge v6, v1, :cond_7

    .line 453
    move v8, v6

    .line 454
    .local v8, "index":I
    if-eqz p1, :cond_4

    .line 455
    add-int/lit8 v9, v1, -0x1

    sub-int v8, v9, v6

    .line 457
    :cond_4
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v9}, Landroidx/constraintlayout/solver/widgets/Flow;->access$400(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    iget v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v10, v8

    aget-object v9, v9, v10

    .line 458
    .local v9, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v10

    if-nez v10, :cond_6

    .line 459
    if-ne v4, v7, :cond_5

    .line 460
    move v4, v6

    .line 462
    :cond_5
    move v5, v6

    .line 452
    .end local v8    # "index":I
    .end local v9    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 466
    .end local v6    # "i":I
    :cond_7
    const/4 v6, 0x0

    .line 467
    .local v6, "previous":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget v8, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    if-nez v8, :cond_1a

    .line 468
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 469
    .local v8, "verticalWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v9}, Landroidx/constraintlayout/solver/widgets/Flow;->access$500(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 470
    iget v9, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 471
    .local v9, "padding":I
    if-lez p2, :cond_8

    .line 472
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v10}, Landroidx/constraintlayout/solver/widgets/Flow;->access$100(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v10

    add-int/2addr v9, v10

    .line 474
    :cond_8
    iget-object v10, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10, v11, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 475
    if-eqz p3, :cond_9

    .line 476
    iget-object v10, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 478
    :cond_9
    if-lez p2, :cond_a

    .line 479
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 480
    .local v10, "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v11, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10, v11, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 483
    .end local v10    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_a
    move-object v10, v8

    .line 484
    .local v10, "baselineVerticalWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v11}, Landroidx/constraintlayout/solver/widgets/Flow;->access$600(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_d

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v11

    if-nez v11, :cond_d

    .line 485
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    if-ge v11, v1, :cond_d

    .line 486
    move v13, v11

    .line 487
    .local v13, "index":I
    if-eqz p1, :cond_b

    .line 488
    add-int/lit8 v14, v1, -0x1

    sub-int v13, v14, v11

    .line 490
    :cond_b
    iget-object v14, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v14}, Landroidx/constraintlayout/solver/widgets/Flow;->access$400(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v14

    iget v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v15, v13

    aget-object v14, v14, v15

    .line 491
    .local v14, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 492
    move-object v10, v14

    .line 493
    goto :goto_4

    .line 485
    .end local v13    # "index":I
    .end local v14    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 498
    .end local v11    # "i":I
    :cond_d
    :goto_4
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_5
    if-ge v11, v1, :cond_19

    .line 499
    move v13, v11

    .line 500
    .restart local v13    # "index":I
    if-eqz p1, :cond_e

    .line 501
    add-int/lit8 v14, v1, -0x1

    sub-int v13, v14, v11

    .line 503
    :cond_e
    iget-object v14, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v14}, Landroidx/constraintlayout/solver/widgets/Flow;->access$400(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v14

    iget v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v15, v13

    aget-object v14, v14, v15

    .line 504
    .restart local v14    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-nez v11, :cond_f

    .line 505
    iget-object v15, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v2, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    invoke-virtual {v14, v15, v12, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 510
    :cond_f
    if-nez v13, :cond_12

    .line 511
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v2}, Landroidx/constraintlayout/solver/widgets/Flow;->access$700(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v2

    .line 512
    .local v2, "style":I
    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v12}, Landroidx/constraintlayout/solver/widgets/Flow;->access$800(Landroidx/constraintlayout/solver/widgets/Flow;)F

    move-result v12

    .line 513
    .local v12, "bias":F
    iget v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    if-nez v15, :cond_10

    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v15}, Landroidx/constraintlayout/solver/widgets/Flow;->access$900(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v15

    if-eq v15, v7, :cond_10

    .line 514
    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v15}, Landroidx/constraintlayout/solver/widgets/Flow;->access$900(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v2

    .line 515
    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v15}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1000(Landroidx/constraintlayout/solver/widgets/Flow;)F

    move-result v12

    goto :goto_6

    .line 516
    :cond_10
    if-eqz p3, :cond_11

    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v15}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1100(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v15

    if-eq v15, v7, :cond_11

    .line 517
    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v15}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1100(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v2

    .line 518
    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v15}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1200(Landroidx/constraintlayout/solver/widgets/Flow;)F

    move-result v12

    .line 520
    :cond_11
    :goto_6
    invoke-virtual {v14, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 521
    invoke-virtual {v14, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 523
    .end local v2    # "style":I
    .end local v12    # "bias":F
    :cond_12
    add-int/lit8 v2, v1, -0x1

    if-ne v11, v2, :cond_13

    .line 524
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    invoke-virtual {v14, v2, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 526
    :cond_13
    if-eqz v6, :cond_15

    .line 527
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v15}, Landroidx/constraintlayout/solver/widgets/Flow;->access$000(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v15

    invoke-virtual {v2, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 528
    if-ne v11, v4, :cond_14

    .line 529
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    invoke-virtual {v2, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setGoneMargin(I)V

    .line 531
    :cond_14
    iget-object v2, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v15, 0x0

    invoke-virtual {v2, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 532
    add-int/lit8 v2, v5, 0x1

    if-ne v11, v2, :cond_15

    .line 533
    iget-object v2, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    invoke-virtual {v2, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setGoneMargin(I)V

    .line 536
    :cond_15
    if-eq v14, v8, :cond_18

    .line 537
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v2}, Landroidx/constraintlayout/solver/widgets/Flow;->access$600(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v2

    const/4 v12, 0x3

    if-ne v2, v12, :cond_16

    .line 538
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v2

    if-eqz v2, :cond_16

    if-eq v14, v10, :cond_16

    .line 540
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 541
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v15, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v12, 0x0

    invoke-virtual {v2, v15, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_7

    .line 543
    :cond_16
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v2}, Landroidx/constraintlayout/solver/widgets/Flow;->access$600(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 554
    if-eqz v3, :cond_17

    .line 555
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    invoke-virtual {v2, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 556
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    invoke-virtual {v2, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_7

    .line 549
    :pswitch_0
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v15, 0x0

    invoke-virtual {v2, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 551
    goto :goto_7

    .line 545
    :pswitch_1
    const/4 v15, 0x0

    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 547
    goto :goto_7

    .line 558
    :cond_17
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v15, 0x0

    invoke-virtual {v2, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 559
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 565
    :cond_18
    :goto_7
    move-object v6, v14

    .line 498
    .end local v13    # "index":I
    .end local v14    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x0

    const/4 v12, 0x3

    goto/16 :goto_5

    .line 567
    .end local v8    # "verticalWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v9    # "padding":I
    .end local v10    # "baselineVerticalWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v11    # "i":I
    :cond_19
    goto/16 :goto_d

    .line 568
    :cond_1a
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 569
    .local v2, "horizontalWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v8}, Landroidx/constraintlayout/solver/widgets/Flow;->access$700(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 570
    iget v8, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 571
    .local v8, "padding":I
    if-lez p2, :cond_1b

    .line 572
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v9}, Landroidx/constraintlayout/solver/widgets/Flow;->access$000(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v9

    add-int/2addr v8, v9

    .line 574
    :cond_1b
    if-eqz p1, :cond_1d

    .line 575
    iget-object v9, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 576
    if-eqz p3, :cond_1c

    .line 577
    iget-object v9, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    invoke-virtual {v9, v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 579
    :cond_1c
    if-lez p2, :cond_1f

    .line 580
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 581
    .local v9, "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 582
    .end local v9    # "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    goto :goto_8

    .line 584
    :cond_1d
    iget-object v9, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 585
    if-eqz p3, :cond_1e

    .line 586
    iget-object v9, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    invoke-virtual {v9, v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 588
    :cond_1e
    if-lez p2, :cond_1f

    .line 589
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 590
    .local v9, "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 593
    .end local v9    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_1f
    :goto_8
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_9
    if-ge v9, v1, :cond_29

    .line 594
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v10}, Landroidx/constraintlayout/solver/widgets/Flow;->access$400(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v10

    iget v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v11, v9

    aget-object v10, v10, v11

    .line 595
    .local v10, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-nez v9, :cond_22

    .line 596
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 597
    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v11}, Landroidx/constraintlayout/solver/widgets/Flow;->access$500(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v11

    .line 598
    .local v11, "style":I
    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v12}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1300(Landroidx/constraintlayout/solver/widgets/Flow;)F

    move-result v12

    .line 599
    .restart local v12    # "bias":F
    iget v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    if-nez v13, :cond_20

    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v13}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1400(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v13

    if-eq v13, v7, :cond_20

    .line 600
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v13}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1400(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v11

    .line 601
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v13}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1500(Landroidx/constraintlayout/solver/widgets/Flow;)F

    move-result v12

    goto :goto_a

    .line 602
    :cond_20
    if-eqz p3, :cond_21

    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v13}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1600(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v13

    if-eq v13, v7, :cond_21

    .line 603
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v13}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1600(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v11

    .line 604
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v13}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1700(Landroidx/constraintlayout/solver/widgets/Flow;)F

    move-result v12

    .line 606
    :cond_21
    :goto_a
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 607
    invoke-virtual {v10, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 609
    .end local v11    # "style":I
    .end local v12    # "bias":F
    :cond_22
    add-int/lit8 v11, v1, -0x1

    if-ne v9, v11, :cond_23

    .line 610
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 612
    :cond_23
    if-eqz v6, :cond_25

    .line 613
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v13}, Landroidx/constraintlayout/solver/widgets/Flow;->access$100(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 614
    if-ne v9, v4, :cond_24

    .line 615
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setGoneMargin(I)V

    .line 617
    :cond_24
    iget-object v11, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 618
    add-int/lit8 v11, v5, 0x1

    if-ne v9, v11, :cond_25

    .line 619
    iget-object v11, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setGoneMargin(I)V

    .line 622
    :cond_25
    if-eq v10, v2, :cond_28

    .line 623
    if-eqz p1, :cond_26

    .line 624
    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v11}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1800(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v11

    packed-switch v11, :pswitch_data_1

    goto :goto_b

    .line 630
    :pswitch_2
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 631
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 633
    goto :goto_b

    .line 635
    :pswitch_3
    const/4 v13, 0x0

    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_b

    .line 626
    :pswitch_4
    const/4 v13, 0x0

    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 628
    nop

    .line 637
    :goto_b
    const/4 v13, 0x0

    goto :goto_c

    .line 640
    :cond_26
    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v11}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1800(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v11

    packed-switch v11, :pswitch_data_2

    const/4 v13, 0x0

    goto :goto_c

    .line 646
    :pswitch_5
    if-eqz v3, :cond_27

    .line 647
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 648
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    const/4 v13, 0x0

    goto :goto_c

    .line 650
    :cond_27
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 651
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 654
    goto :goto_c

    .line 656
    :pswitch_6
    const/4 v13, 0x0

    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_c

    .line 642
    :pswitch_7
    const/4 v13, 0x0

    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 644
    goto :goto_c

    .line 622
    :cond_28
    const/4 v13, 0x0

    .line 662
    :goto_c
    move-object v6, v10

    .line 593
    .end local v10    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_9

    .line 665
    .end local v2    # "horizontalWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v8    # "padding":I
    .end local v9    # "i":I
    :cond_29
    :goto_d
    return-void

    .line 446
    .end local v3    # "singleChain":Z
    .end local v4    # "firstVisible":I
    .end local v5    # "lastVisible":I
    .end local v6    # "previous":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_2a
    :goto_e
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public getHeight()I
    .locals 2

    .line 394
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 395
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v1}, Landroidx/constraintlayout/solver/widgets/Flow;->access$100(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 397
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 2

    .line 387
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    if-nez v0, :cond_0

    .line 388
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v1}, Landroidx/constraintlayout/solver/widgets/Flow;->access$000(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 390
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    return v0
.end method

.method public measureMatchConstraints(I)V
    .locals 10
    .param p1, "availableSpace"    # I

    .line 668
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    if-nez v0, :cond_0

    .line 669
    return-void

    .line 671
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mCount:I

    .line 672
    .local v1, "count":I
    div-int v0, p1, v0

    .line 673
    .local v0, "widgetSize":I
    const/4 v2, 0x0

    move v8, v2

    .local v8, "i":I
    :goto_0
    if-ge v8, v1, :cond_3

    .line 674
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v2}, Landroidx/constraintlayout/solver/widgets/Flow;->access$400(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v3, v8

    aget-object v9, v2, v3

    .line 675
    .local v9, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    if-nez v2, :cond_1

    .line 676
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_2

    .line 677
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v7

    move-object v3, v9

    move v5, v0

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/Flow;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    goto :goto_1

    .line 680
    :cond_1
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_2

    .line 681
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v3, v9

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/Flow;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 673
    .end local v9    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_2
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 685
    .end local v8    # "i":I
    :cond_3
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->recomputeDimensions()V

    .line 686
    return-void
.end method

.method public setStartIndex(I)V
    .locals 0
    .param p1, "value"    # I

    .line 384
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    return-void
.end method

.method public setup(ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIII)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "left"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p3, "top"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p4, "right"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p5, "bottom"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p6, "paddingLeft"    # I
    .param p7, "paddingTop"    # I
    .param p8, "paddingRight"    # I
    .param p9, "paddingBottom"    # I
    .param p10, "max"    # I

    .line 362
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    .line 363
    iput-object p2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 364
    iput-object p3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 365
    iput-object p4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 366
    iput-object p5, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 367
    iput p6, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 368
    iput p7, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 369
    iput p8, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 370
    iput p9, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 371
    iput p10, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    .line 372
    return-void
.end method
