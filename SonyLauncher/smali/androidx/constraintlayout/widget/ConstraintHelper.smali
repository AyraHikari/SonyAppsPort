.class public abstract Landroidx/constraintlayout/widget/ConstraintHelper;
.super Landroid/view/View;
.source "ConstraintHelper.java"


# instance fields
.field protected mCount:I

.field protected mHelperWidget:Landroidx/constraintlayout/solver/widgets/Helper;

.field protected mIds:[I

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mReferenceIds:Ljava/lang/String;

.field protected mUseViewMeasure:Z

.field private mViews:[Landroid/view/View;

.field protected myContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 48
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mUseViewMeasure:Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mViews:[Landroid/view/View;

    .line 76
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mMap:Ljava/util/HashMap;

    .line 80
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 81
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mUseViewMeasure:Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mViews:[Landroid/view/View;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mMap:Ljava/util/HashMap;

    .line 86
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 87
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mUseViewMeasure:Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mViews:[Landroid/view/View;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mMap:Ljava/util/HashMap;

    .line 92
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method private addID(Ljava/lang/String;)V
    .locals 5
    .param p1, "idString"    # Ljava/lang/String;

    .line 227
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 230
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->myContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 231
    return-void

    .line 234
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "parent":Landroidx/constraintlayout/widget/ConstraintLayout;
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_2

    .line 238
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 240
    :cond_2
    const/4 v1, 0x0

    .line 242
    .local v1, "rscId":I
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 243
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 244
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_3

    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 245
    move-object v3, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 249
    .end local v2    # "value":Ljava/lang/Object;
    :cond_3
    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    .line 251
    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->findId(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    move-result v1

    .line 254
    :cond_4
    if-nez v1, :cond_5

    .line 255
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 256
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 255
    const-string v4, "id"

    invoke-virtual {v2, p1, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 259
    :cond_5
    if-eqz v1, :cond_6

    .line 260
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-direct {p0, v1}, Landroidx/constraintlayout/widget/ConstraintHelper;->addRscID(I)V

    goto :goto_0

    .line 263
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find id of \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConstraintHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_0
    return-void

    .line 228
    .end local v0    # "parent":Landroidx/constraintlayout/widget/ConstraintLayout;
    .end local v1    # "rscId":I
    :cond_7
    :goto_1
    return-void
.end method

.method private addRscID(I)V
    .locals 3
    .param p1, "id"    # I

    .line 181
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    array-length v2, v1

    if-le v0, v2, :cond_0

    .line 182
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    .line 184
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    aput p1, v0, v1

    .line 185
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    .line 186
    return-void
.end method

.method private convertReferenceString(Landroid/view/View;Ljava/lang/String;)[I
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "referenceIdString"    # Ljava/lang/String;

    .line 465
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "split":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 467
    .local v1, "context":Landroid/content/Context;
    array-length v2, v0

    new-array v2, v2, [I

    .line 468
    .local v2, "rscIds":[I
    const/4 v3, 0x0

    .line 469
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_2

    .line 470
    aget-object v5, v0, v4

    .line 471
    .local v5, "idString":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 472
    const/4 v6, 0x0

    .line 474
    .local v6, "id":I
    :try_start_0
    const-class v7, Landroidx/constraintlayout/widget/R$id;

    .line 475
    .local v7, "res":Ljava/lang/Class;
    invoke-virtual {v7, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 476
    .local v8, "field":Ljava/lang/reflect/Field;
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v9

    .line 479
    .end local v7    # "res":Ljava/lang/Class;
    .end local v8    # "field":Ljava/lang/reflect/Field;
    goto :goto_1

    .line 477
    :catch_0
    move-exception v7

    .line 480
    :goto_1
    if-nez v6, :cond_0

    .line 481
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 482
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 481
    const-string v9, "id"

    invoke-virtual {v7, v5, v9, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 485
    :cond_0
    if-nez v6, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v7, :cond_1

    .line 486
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 487
    .local v7, "constraintLayout":Landroidx/constraintlayout/widget/ConstraintLayout;
    const/4 v8, 0x0

    invoke-virtual {v7, v8, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 488
    .local v8, "value":Ljava/lang/Object;
    if-eqz v8, :cond_1

    instance-of v9, v8, Ljava/lang/Integer;

    if-eqz v9, :cond_1

    .line 489
    move-object v9, v8

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 492
    .end local v7    # "constraintLayout":Landroidx/constraintlayout/widget/ConstraintLayout;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "count":I
    .local v7, "count":I
    aput v6, v2, v3

    .line 469
    .end local v5    # "idString":Ljava/lang/String;
    .end local v6    # "id":I
    add-int/lit8 v4, v4, 0x1

    move v3, v7

    goto :goto_0

    .line 494
    .end local v4    # "i":I
    .end local v7    # "count":I
    .restart local v3    # "count":I
    :cond_2
    array-length v4, v0

    if-eq v3, v4, :cond_3

    .line 495
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 497
    :cond_3
    return-object v2
.end method

.method private findId(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I
    .locals 7
    .param p1, "container"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "idString"    # Ljava/lang/String;

    .line 276
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 279
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 280
    .local v1, "resources":Landroid/content/res/Resources;
    if-nez v1, :cond_1

    .line 281
    return v0

    .line 283
    :cond_1
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v2

    .line 284
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 285
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 286
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 287
    const/4 v5, 0x0

    .line 289
    .local v5, "res":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    .line 292
    goto :goto_1

    .line 290
    :catch_0
    move-exception v6

    .line 293
    :goto_1
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 294
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v0

    return v0

    .line 284
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "res":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 298
    .end local v3    # "j":I
    :cond_3
    return v0

    .line 277
    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v2    # "count":I
    :cond_4
    :goto_2
    return v0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "ConstraintHelper"

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 121
    const-string v0, "Views added to a ConstraintHelper need to have an id"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void

    .line 124
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 125
    const-string v0, "Views added to a ConstraintHelper need to have a parent"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void

    .line 128
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->addRscID(I)V

    .line 130
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->requestLayout()V

    .line 131
    return-void
.end method

.method protected applyLayoutFeatures()V
    .locals 2

    .line 351
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 352
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_0

    .line 353
    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintHelper;->applyLayoutFeatures(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 355
    :cond_0
    return-void
.end method

.method protected applyLayoutFeatures(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 7
    .param p1, "container"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 327
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->getVisibility()I

    move-result v0

    .line 328
    .local v0, "visibility":I
    const/4 v1, 0x0

    .line 329
    .local v1, "elevation":F
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 330
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->getElevation()F

    move-result v1

    .line 332
    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 333
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintHelper;->setIds(Ljava/lang/String;)V

    .line 335
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    if-ge v2, v4, :cond_3

    .line 336
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    aget v4, v4, v2

    .line 337
    .local v4, "id":I
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v5

    .line 338
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_2

    .line 339
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 340
    const/4 v6, 0x0

    cmpl-float v6, v1, v6

    if-lez v6, :cond_2

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v3, :cond_2

    .line 341
    invoke-virtual {v5}, Landroid/view/View;->getTranslationZ()F

    move-result v6

    add-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationZ(F)V

    .line 335
    .end local v4    # "id":I
    .end local v5    # "view":Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 345
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method public getReferencedIds()[I
    .locals 2

    .line 162
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method protected getViews(Landroidx/constraintlayout/widget/ConstraintLayout;)[Landroid/view/View;
    .locals 4
    .param p1, "layout"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 407
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mViews:[Landroid/view/View;

    if-eqz v0, :cond_0

    array-length v0, v0

    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    if-eq v0, v1, :cond_1

    .line 408
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mViews:[Landroid/view/View;

    .line 411
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    if-ge v0, v1, :cond_2

    .line 412
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    aget v1, v1, v0

    .line 413
    .local v1, "id":I
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mViews:[Landroid/view/View;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v0

    .line 411
    .end local v1    # "id":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mViews:[Landroid/view/View;

    return-object v0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 100
    if-eqz p1, :cond_1

    .line 101
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 103
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 104
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 105
    .local v3, "attr":I
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_constraint_referenced_ids:I

    if-ne v3, v4, :cond_0

    .line 106
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    .line 107
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/ConstraintHelper;->setIds(Ljava/lang/String;)V

    .line 103
    .end local v3    # "attr":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public loadParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroidx/constraintlayout/solver/widgets/HelperWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .locals 3
    .param p1, "constraint"    # Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .param p2, "child"    # Landroidx/constraintlayout/solver/widgets/HelperWidget;
    .param p3, "layoutParams"    # Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;",
            "Landroidx/constraintlayout/solver/widgets/HelperWidget;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 447
    .local p4, "mapIdToWidget":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    goto :goto_1

    .line 449
    :cond_0
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 450
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 451
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    invoke-direct {p0, p0, v1}, Landroidx/constraintlayout/widget/ConstraintHelper;->convertReferenceString(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 453
    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/HelperWidget;->removeAllIds()V

    .line 454
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 455
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    aget v1, v1, v0

    .line 456
    .local v1, "id":I
    invoke-virtual {p4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 457
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v2, :cond_1

    .line 458
    invoke-virtual {p2, v2}, Landroidx/constraintlayout/solver/widgets/HelperWidget;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 454
    .end local v1    # "id":I
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 462
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 194
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 201
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mUseViewMeasure:Z

    if-eqz v0, :cond_0

    .line 202
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_0

    .line 204
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->setMeasuredDimension(II)V

    .line 206
    :goto_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 140
    .local v0, "id":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 141
    return-void

    .line 143
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    .line 144
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    if-ge v1, v2, :cond_3

    .line 145
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    aget v2, v2, v1

    if-ne v2, v0, :cond_2

    .line 146
    move v2, v1

    .local v2, "j":I
    :goto_1
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    add-int/lit8 v4, v3, -0x1

    if-ge v2, v4, :cond_1

    .line 147
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    add-int/lit8 v4, v2, 0x1

    aget v4, v3, v4

    aput v4, v3, v2

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 149
    .end local v2    # "j":I
    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x0

    aput v5, v2, v4

    .line 150
    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    .line 151
    goto :goto_2

    .line 144
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v1    # "i":I
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->requestLayout()V

    .line 155
    return-void
.end method

.method public resolveRtl(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)V
    .locals 0
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "isRtl"    # Z

    .line 502
    return-void
.end method

.method protected setIds(Ljava/lang/String;)V
    .locals 3
    .param p1, "idList"    # Ljava/lang/String;

    .line 305
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    .line 306
    if-nez p1, :cond_0

    .line 307
    return-void

    .line 309
    :cond_0
    const/4 v0, 0x0

    .line 310
    .local v0, "begin":I
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    .line 312
    :goto_0
    const/16 v1, 0x2c

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 313
    .local v1, "end":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 314
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/constraintlayout/widget/ConstraintHelper;->addID(Ljava/lang/String;)V

    .line 315
    nop

    .line 320
    .end local v1    # "end":I
    return-void

    .line 317
    .restart local v1    # "end":I
    :cond_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/constraintlayout/widget/ConstraintHelper;->addID(Ljava/lang/String;)V

    .line 318
    add-int/lit8 v0, v1, 0x1

    .line 319
    .end local v1    # "end":I
    goto :goto_0
.end method

.method public setReferencedIds([I)V
    .locals 2
    .param p1, "ids"    # [I

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 173
    aget v1, p1, v0

    invoke-direct {p0, v1}, Landroidx/constraintlayout/widget/ConstraintHelper;->addRscID(I)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public updatePostConstraints(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0
    .param p1, "constainer"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 438
    return-void
.end method

.method public updatePostLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0
    .param p1, "container"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 426
    return-void
.end method

.method public updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0
    .param p1, "container"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 434
    return-void
.end method

.method public updatePreDraw(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0
    .param p1, "container"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 442
    return-void
.end method

.method public updatePreLayout(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/widgets/Helper;Landroid/util/SparseArray;)V
    .locals 3
    .param p1, "container"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p2, "helper"    # Landroidx/constraintlayout/solver/widgets/Helper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;",
            "Landroidx/constraintlayout/solver/widgets/Helper;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 398
    .local p3, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    invoke-interface {p2}, Landroidx/constraintlayout/solver/widgets/Helper;->removeAllIds()V

    .line 399
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    if-ge v0, v1, :cond_0

    .line 400
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    aget v1, v1, v0

    .line 401
    .local v1, "id":I
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-interface {p2, v2}, Landroidx/constraintlayout/solver/widgets/Helper;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 399
    .end local v1    # "id":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public updatePreLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 7
    .param p1, "container"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 364
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->setIds(Ljava/lang/String;)V

    .line 367
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 368
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->setIds(Ljava/lang/String;)V

    .line 370
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mHelperWidget:Landroidx/constraintlayout/solver/widgets/Helper;

    if-nez v0, :cond_2

    .line 371
    return-void

    .line 373
    :cond_2
    invoke-interface {v0}, Landroidx/constraintlayout/solver/widgets/Helper;->removeAllIds()V

    .line 374
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    if-ge v0, v1, :cond_5

    .line 375
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    aget v1, v1, v0

    .line 376
    .local v1, "id":I
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v2

    .line 377
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_3

    .line 380
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 381
    .local v3, "candidate":Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Landroidx/constraintlayout/widget/ConstraintHelper;->findId(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    move-result v4

    .line 382
    .local v4, "foundId":I
    if-eqz v4, :cond_3

    .line 383
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    aput v4, v5, v0

    .line 384
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v2

    .line 388
    .end local v3    # "candidate":Ljava/lang/String;
    .end local v4    # "foundId":I
    :cond_3
    if-eqz v2, :cond_4

    .line 389
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mHelperWidget:Landroidx/constraintlayout/solver/widgets/Helper;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    invoke-interface {v3, v4}, Landroidx/constraintlayout/solver/widgets/Helper;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 374
    .end local v1    # "id":I
    .end local v2    # "view":Landroid/view/View;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    .end local v0    # "i":I
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mHelperWidget:Landroidx/constraintlayout/solver/widgets/Helper;

    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-interface {v0, v1}, Landroidx/constraintlayout/solver/widgets/Helper;->updateConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    .line 393
    return-void
.end method

.method public validateParams()V
    .locals 3

    .line 213
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mHelperWidget:Landroidx/constraintlayout/solver/widgets/Helper;

    if-nez v0, :cond_0

    .line 214
    return-void

    .line 216
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 217
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 218
    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 219
    .local v1, "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mHelperWidget:Landroidx/constraintlayout/solver/widgets/Helper;

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 221
    .end local v1    # "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    :cond_1
    return-void
.end method
