.class Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
.super Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VFullPath"
.end annotation


# instance fields
.field mFillAlpha:F

.field mFillColor:Landroidx/core/content/res/ComplexColorCompat;

.field mStrokeAlpha:F

.field mStrokeColor:Landroidx/core/content/res/ComplexColorCompat;

.field mStrokeLineCap:Landroid/graphics/Paint$Cap;

.field mStrokeLineJoin:Landroid/graphics/Paint$Join;

.field mStrokeMiterlimit:F

.field mStrokeWidth:F

.field private mThemeAttrs:[I

.field mTrimPathEnd:F

.field mTrimPathOffset:F

.field mTrimPathStart:F


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1838
    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;-><init>()V

    .line 1825
    const/4 v0, 0x0

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1828
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1829
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 1830
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 1831
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 1832
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 1834
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1835
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1836
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    .line 1840
    return-void
.end method

.method constructor <init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;)V
    .locals 2
    .param p1, "copy"    # Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;

    .line 1843
    invoke-direct {p0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;-><init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;)V

    .line 1825
    const/4 v0, 0x0

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1828
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1829
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 1830
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 1831
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 1832
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 1834
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1835
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1836
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    .line 1844
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    .line 1846
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Landroidx/core/content/res/ComplexColorCompat;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Landroidx/core/content/res/ComplexColorCompat;

    .line 1847
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1848
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1849
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Landroidx/core/content/res/ComplexColorCompat;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Landroidx/core/content/res/ComplexColorCompat;

    .line 1850
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    .line 1851
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 1852
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 1853
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 1854
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 1856
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1857
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1858
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    .line 1859
    return-void
.end method

.method private getStrokeLineCap(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;
    .locals 1
    .param p1, "id"    # I
    .param p2, "defValue"    # Landroid/graphics/Paint$Cap;

    .line 1862
    packed-switch p1, :pswitch_data_0

    .line 1870
    return-object p2

    .line 1868
    :pswitch_0
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    return-object v0

    .line 1866
    :pswitch_1
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    return-object v0

    .line 1864
    :pswitch_2
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getStrokeLineJoin(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;
    .locals 1
    .param p1, "id"    # I
    .param p2, "defValue"    # Landroid/graphics/Paint$Join;

    .line 1875
    packed-switch p1, :pswitch_data_0

    .line 1883
    return-object p2

    .line 1881
    :pswitch_0
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    return-object v0

    .line 1879
    :pswitch_1
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    return-object v0

    .line 1877
    :pswitch_2
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V
    .locals 12
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .line 1904
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    .line 1911
    const-string v0, "pathData"

    invoke-static {p2, v0}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 1912
    .local v0, "hasPathData":Z
    if-nez v0, :cond_0

    .line 1915
    return-void

    .line 1918
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1920
    .local v1, "pathName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1921
    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mPathName:Ljava/lang/String;

    .line 1923
    :cond_1
    const/4 v2, 0x2

    .line 1924
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1925
    .local v2, "pathData":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1926
    invoke-static {v2}, Landroidx/core/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;

    move-result-object v3

    iput-object v3, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mNodes:[Landroidx/core/graphics/PathParser$PathDataNode;

    .line 1929
    :cond_2
    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v7, "fillColor"

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v4 .. v9}, Landroidx/core/content/res/TypedArrayUtils;->getNamedComplexColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Landroidx/core/content/res/ComplexColorCompat;

    move-result-object v3

    iput-object v3, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Landroidx/core/content/res/ComplexColorCompat;

    .line 1931
    const/16 v3, 0xc

    iget v4, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    const-string v5, "fillAlpha"

    invoke-static {p1, p2, v5, v3, v4}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v3

    iput v3, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 1933
    const/16 v3, 0x8

    const-string v4, "strokeLineCap"

    const/4 v5, -0x1

    invoke-static {p1, p2, v4, v3, v5}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    .line 1935
    .local v3, "lineCap":I
    iget-object v4, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    invoke-direct {p0, v3, v4}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->getStrokeLineCap(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;

    move-result-object v4

    iput-object v4, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1936
    const/16 v4, 0x9

    const-string v6, "strokeLineJoin"

    invoke-static {p1, p2, v6, v4, v5}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v4

    .line 1938
    .local v4, "lineJoin":I
    iget-object v5, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    invoke-direct {p0, v4, v5}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->getStrokeLineJoin(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;

    move-result-object v5

    iput-object v5, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1939
    const/16 v5, 0xa

    iget v6, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    const-string v7, "strokeMiterLimit"

    invoke-static {p1, p2, v7, v5, v6}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    .line 1942
    const/4 v10, 0x3

    const/4 v11, 0x0

    const-string v9, "strokeColor"

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v6 .. v11}, Landroidx/core/content/res/TypedArrayUtils;->getNamedComplexColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Landroidx/core/content/res/ComplexColorCompat;

    move-result-object v5

    iput-object v5, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Landroidx/core/content/res/ComplexColorCompat;

    .line 1944
    const/16 v5, 0xb

    iget v6, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    const-string v7, "strokeAlpha"

    invoke-static {p1, p2, v7, v5, v6}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1946
    const/4 v5, 0x4

    iget v6, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    const-string v7, "strokeWidth"

    invoke-static {p1, p2, v7, v5, v6}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1948
    const/4 v5, 0x6

    iget v6, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    const-string v7, "trimPathEnd"

    invoke-static {p1, p2, v7, v5, v6}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 1950
    const/4 v5, 0x7

    iget v6, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    const-string v7, "trimPathOffset"

    invoke-static {p1, p2, v7, v5, v6}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 1953
    const/4 v5, 0x5

    iget v6, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    const-string v7, "trimPathStart"

    invoke-static {p1, p2, v7, v5, v6}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 1956
    const/16 v5, 0xd

    iget v6, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    const-string v7, "fillType"

    invoke-static {p1, p2, v7, v5, v6}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    iput v5, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    .line 1959
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 1975
    nop

    .line 1976
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .line 1889
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getFillAlpha()F
    .locals 1

    .line 2031
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    return v0
.end method

.method getFillColor()I
    .locals 1

    .line 2021
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v0}, Landroidx/core/content/res/ComplexColorCompat;->getColor()I

    move-result v0

    return v0
.end method

.method getStrokeAlpha()F
    .locals 1

    .line 2010
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    return v0
.end method

.method getStrokeColor()I
    .locals 1

    .line 1990
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v0}, Landroidx/core/content/res/ComplexColorCompat;->getColor()I

    move-result v0

    return v0
.end method

.method getStrokeWidth()F
    .locals 1

    .line 2000
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    return v0
.end method

.method getTrimPathEnd()F
    .locals 1

    .line 2051
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    return v0
.end method

.method getTrimPathOffset()F
    .locals 1

    .line 2061
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    return v0
.end method

.method getTrimPathStart()F
    .locals 1

    .line 2041
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 1893
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_VECTOR_DRAWABLE_PATH:[I

    invoke-static {p1, p3, p2, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1895
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0, p4, p3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V

    .line 1896
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1897
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 1963
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v0}, Landroidx/core/content/res/ComplexColorCompat;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v0}, Landroidx/core/content/res/ComplexColorCompat;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onStateChanged([I)Z
    .locals 2
    .param p1, "stateSet"    # [I

    .line 1968
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/content/res/ComplexColorCompat;->onStateChanged([I)Z

    move-result v0

    .line 1969
    .local v0, "changed":Z
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v1, p1}, Landroidx/core/content/res/ComplexColorCompat;->onStateChanged([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1970
    return v0
.end method

.method setFillAlpha(F)V
    .locals 0
    .param p1, "fillAlpha"    # F

    .line 2036
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 2037
    return-void
.end method

.method setFillColor(I)V
    .locals 1
    .param p1, "fillColor"    # I

    .line 2026
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/content/res/ComplexColorCompat;->setColor(I)V

    .line 2027
    return-void
.end method

.method setStrokeAlpha(F)V
    .locals 0
    .param p1, "strokeAlpha"    # F

    .line 2015
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 2016
    return-void
.end method

.method setStrokeColor(I)V
    .locals 1
    .param p1, "strokeColor"    # I

    .line 1995
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/content/res/ComplexColorCompat;->setColor(I)V

    .line 1996
    return-void
.end method

.method setStrokeWidth(F)V
    .locals 0
    .param p1, "strokeWidth"    # F

    .line 2005
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 2006
    return-void
.end method

.method setTrimPathEnd(F)V
    .locals 0
    .param p1, "trimPathEnd"    # F

    .line 2056
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 2057
    return-void
.end method

.method setTrimPathOffset(F)V
    .locals 0
    .param p1, "trimPathOffset"    # F

    .line 2066
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 2067
    return-void
.end method

.method setTrimPathStart(F)V
    .locals 0
    .param p1, "trimPathStart"    # F

    .line 2046
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 2047
    return-void
.end method
