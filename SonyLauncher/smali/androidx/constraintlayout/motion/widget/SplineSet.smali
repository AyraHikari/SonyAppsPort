.class public abstract Landroidx/constraintlayout/motion/widget/SplineSet;
.super Ljava/lang/Object;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/SplineSet$Sort;,
        Landroidx/constraintlayout/motion/widget/SplineSet$ProgressSet;,
        Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;,
        Landroidx/constraintlayout/motion/widget/SplineSet$TranslationZset;,
        Landroidx/constraintlayout/motion/widget/SplineSet$TranslationYset;,
        Landroidx/constraintlayout/motion/widget/SplineSet$TranslationXset;,
        Landroidx/constraintlayout/motion/widget/SplineSet$ScaleYset;,
        Landroidx/constraintlayout/motion/widget/SplineSet$ScaleXset;,
        Landroidx/constraintlayout/motion/widget/SplineSet$PathRotate;,
        Landroidx/constraintlayout/motion/widget/SplineSet$RotationYset;,
        Landroidx/constraintlayout/motion/widget/SplineSet$RotationXset;,
        Landroidx/constraintlayout/motion/widget/SplineSet$RotationSet;,
        Landroidx/constraintlayout/motion/widget/SplineSet$AlphaSet;,
        Landroidx/constraintlayout/motion/widget/SplineSet$ElevationSet;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SplineSet"


# instance fields
.field private count:I

.field protected mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

.field protected mTimePoints:[I

.field private mType:Ljava/lang/String;

.field protected mValues:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0xa

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    .line 41
    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mValues:[F

    return-void
.end method

.method static makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/widget/SplineSet;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)",
            "Landroidx/constraintlayout/motion/widget/SplineSet;"
        }
    .end annotation

    .line 75
    .local p1, "attrList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/constraintlayout/widget/ConstraintAttribute;>;"
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method static makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/widget/SplineSet;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "waveOffset"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "transitionPathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "elevation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "rotation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "waveVariesBy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_6
    const-string v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_7
    const-string v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_8
    const-string v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_9
    const-string v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_a
    const-string v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_b
    const-string v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_c
    const-string v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_d
    const-string v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 107
    :pswitch_0
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$ProgressSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/SplineSet$ProgressSet;-><init>()V

    return-object v0

    .line 105
    :pswitch_1
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$TranslationZset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/SplineSet$TranslationZset;-><init>()V

    return-object v0

    .line 103
    :pswitch_2
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$TranslationYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/SplineSet$TranslationYset;-><init>()V

    return-object v0

    .line 101
    :pswitch_3
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$TranslationXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/SplineSet$TranslationXset;-><init>()V

    return-object v0

    .line 99
    :pswitch_4
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/SplineSet$AlphaSet;-><init>()V

    return-object v0

    .line 97
    :pswitch_5
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/SplineSet$AlphaSet;-><init>()V

    return-object v0

    .line 95
    :pswitch_6
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$ScaleYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/SplineSet$ScaleYset;-><init>()V

    return-object v0

    .line 93
    :pswitch_7
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$ScaleXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/SplineSet$ScaleXset;-><init>()V

    return-object v0

    .line 91
    :pswitch_8
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$PathRotate;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/SplineSet$PathRotate;-><init>()V

    return-object v0

    .line 89
    :pswitch_9
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$RotationYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/SplineSet$RotationYset;-><init>()V

    return-object v0

    .line 87
    :pswitch_a
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$RotationXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/SplineSet$RotationXset;-><init>()V

    return-object v0

    .line 85
    :pswitch_b
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$RotationSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/SplineSet$RotationSet;-><init>()V

    return-object v0

    .line 83
    :pswitch_c
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$ElevationSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/SplineSet$ElevationSet;-><init>()V

    return-object v0

    .line 81
    :pswitch_d
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/SplineSet$AlphaSet;-><init>()V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_d
        -0x4a771f65 -> :sswitch_c
        -0x490b9c39 -> :sswitch_b
        -0x490b9c38 -> :sswitch_a
        -0x490b9c37 -> :sswitch_9
        -0x3bab3dd3 -> :sswitch_8
        -0x3621dfb2 -> :sswitch_7
        -0x3621dfb1 -> :sswitch_6
        -0x2f893320 -> :sswitch_5
        -0x266f082 -> :sswitch_4
        -0x42d1a3 -> :sswitch_3
        0x2382115 -> :sswitch_2
        0x589b15e -> :sswitch_1
        0x94e04ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public get(F)F
    .locals 4
    .param p1, "t"    # F

    .line 63
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    float-to-double v1, p1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(DI)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getCurveFit()Landroidx/constraintlayout/motion/utils/CurveFit;
    .locals 1

    .line 71
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    return-object v0
.end method

.method public getSlope(F)F
    .locals 4
    .param p1, "t"    # F

    .line 67
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    float-to-double v1, p1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(DI)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public setPoint(IF)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "value"    # F

    .line 116
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    array-length v1, v0

    iget v2, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->count:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_0

    .line 117
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    .line 118
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mValues:[F

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mValues:[F

    .line 120
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->count:I

    aput p1, v0, v1

    .line 121
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mValues:[F

    aput p2, v0, v1

    .line 122
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->count:I

    .line 123
    return-void
.end method

.method public abstract setProperty(Landroid/view/View;F)V
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 57
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mType:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setup(I)V
    .locals 10
    .param p1, "curveType"    # I

    .line 126
    iget v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->count:I

    if-nez v0, :cond_0

    .line 127
    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mValues:[F

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v0}, Landroidx/constraintlayout/motion/widget/SplineSet$Sort;->doubleQuickSort([I[FII)V

    .line 132
    const/4 v0, 0x1

    .line 134
    .local v0, "unique":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->count:I

    if-ge v1, v2, :cond_2

    .line 135
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    add-int/lit8 v5, v1, -0x1

    aget v5, v2, v5

    aget v2, v2, v1

    if-eq v5, v2, :cond_1

    .line 136
    add-int/lit8 v0, v0, 0x1

    .line 134
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v1    # "i":I
    :cond_2
    new-array v1, v0, [D

    .line 141
    .local v1, "time":[D
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v3, v2, v3

    aput v0, v2, v4

    const-class v3, D

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 142
    .local v2, "values":[[D
    const/4 v3, 0x0

    .line 143
    .local v3, "k":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget v6, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->count:I

    if-ge v5, v6, :cond_4

    .line 144
    if-lez v5, :cond_3

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    aget v7, v6, v5

    add-int/lit8 v8, v5, -0x1

    aget v6, v6, v8

    if-ne v7, v6, :cond_3

    .line 145
    goto :goto_2

    .line 148
    :cond_3
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    aget v6, v6, v5

    int-to-double v6, v6

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v6, v8

    aput-wide v6, v1, v3

    .line 149
    aget-object v6, v2, v3

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mValues:[F

    aget v7, v7, v5

    float-to-double v7, v7

    aput-wide v7, v6, v4

    .line 150
    add-int/lit8 v3, v3, 0x1

    .line 143
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 152
    .end local v5    # "i":I
    :cond_4
    invoke-static {p1, v1, v2}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    .line 153
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 47
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mType:Ljava/lang/String;

    .line 48
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, "df":Ljava/text/DecimalFormat;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->count:I

    if-ge v2, v3, :cond_0

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mValues:[F

    aget v4, v4, v2

    float-to-double v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method
