.class Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VPathRenderer"
.end annotation


# static fields
.field private static final IDENTITY_MATRIX:Landroid/graphics/Matrix;


# instance fields
.field mBaseHeight:F

.field mBaseWidth:F

.field private mChangingConfigurations:I

.field mFillPaint:Landroid/graphics/Paint;

.field private final mFinalPathMatrix:Landroid/graphics/Matrix;

.field mIsStateful:Ljava/lang/Boolean;

.field private final mPath:Landroid/graphics/Path;

.field private mPathMeasure:Landroid/graphics/PathMeasure;

.field private final mRenderPath:Landroid/graphics/Path;

.field mRootAlpha:I

.field final mRootGroup:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

.field mRootName:Ljava/lang/String;

.field mStrokePaint:Landroid/graphics/Paint;

.field final mVGTargetsMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mViewportHeight:F

.field mViewportWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1173
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1174
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    .line 1184
    const/4 v0, 0x0

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    .line 1185
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    .line 1186
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    .line 1187
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    .line 1188
    const/16 v0, 0xff

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    .line 1189
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    .line 1190
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    .line 1192
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroidx/collection/ArrayMap;

    .line 1195
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    invoke-direct {v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 1196
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    .line 1197
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    .line 1198
    return-void
.end method

.method constructor <init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;)V
    .locals 3
    .param p1, "copy"    # Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    .line 1219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1174
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    .line 1184
    const/4 v0, 0x0

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    .line 1185
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    .line 1186
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    .line 1187
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    .line 1188
    const/16 v0, 0xff

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    .line 1189
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    .line 1190
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    .line 1192
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroidx/collection/ArrayMap;

    .line 1220
    new-instance v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    iget-object v2, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    invoke-direct {v1, v2, v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;-><init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;Landroidx/collection/ArrayMap;)V

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 1221
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    .line 1222
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    .line 1223
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    .line 1224
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    .line 1225
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    .line 1226
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    .line 1227
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mChangingConfigurations:I

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mChangingConfigurations:I

    .line 1228
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    .line 1229
    iget-object v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    .line 1230
    iget-object v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1231
    invoke-virtual {v0, v1, p0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    :cond_0
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    .line 1234
    return-void
.end method

.method private static cross(FFFF)F
    .locals 2
    .param p0, "v1x"    # F
    .param p1, "v1y"    # F
    .param p2, "v2x"    # F
    .param p3, "v2y"    # F

    .line 1382
    mul-float v0, p0, p3

    mul-float v1, p1, p2

    sub-float/2addr v0, v1

    return v0
.end method

.method private drawGroupTree(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 18
    .param p1, "currentGroup"    # Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    .param p2, "currentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "filter"    # Landroid/graphics/ColorFilter;

    .line 1242
    move-object/from16 v7, p1

    iget-object v0, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    move-object/from16 v8, p2

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1244
    iget-object v0, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    iget-object v1, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 1247
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->save()I

    .line 1250
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_0
    iget-object v0, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_2

    .line 1251
    iget-object v0, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;

    .line 1252
    .local v10, "child":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;
    instance-of v0, v10, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    if-eqz v0, :cond_0

    .line 1253
    move-object v0, v10

    check-cast v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 1254
    .local v0, "childGroup":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    iget-object v13, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    move-object/from16 v11, p0

    move-object v12, v0

    move-object/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p5

    move-object/from16 v17, p6

    invoke-direct/range {v11 .. v17}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->drawGroupTree(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .end local v0    # "childGroup":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    goto :goto_1

    .line 1256
    :cond_0
    instance-of v0, v10, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;

    if-eqz v0, :cond_1

    .line 1257
    move-object v11, v10

    check-cast v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;

    .line 1258
    .local v11, "childPath":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->drawPath(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    goto :goto_2

    .line 1256
    .end local v11    # "childPath":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
    :cond_1
    :goto_1
    nop

    .line 1250
    .end local v10    # "child":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1262
    .end local v9    # "i":I
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->restore()V

    .line 1263
    return-void
.end method

.method private drawPath(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 18
    .param p1, "vGroup"    # Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;
    .param p2, "vPath"    # Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "filter"    # Landroid/graphics/ColorFilter;

    .line 1272
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move/from16 v4, p4

    int-to-float v5, v4

    iget v6, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    div-float/2addr v5, v6

    .line 1273
    .local v5, "scaleX":F
    move/from16 v6, p5

    int-to-float v7, v6

    iget v8, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    div-float/2addr v7, v8

    .line 1274
    .local v7, "scaleY":F
    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1275
    .local v8, "minScale":F
    move-object/from16 v9, p1

    iget-object v10, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    .line 1277
    .local v10, "groupStackedMatrix":Landroid/graphics/Matrix;
    iget-object v11, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v10}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1278
    iget-object v11, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v5, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1281
    invoke-direct {v0, v10}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getMatrixScale(Landroid/graphics/Matrix;)F

    move-result v11

    .line 1282
    .local v11, "matrixScale":F
    const/4 v12, 0x0

    cmpl-float v13, v11, v12

    if-nez v13, :cond_0

    .line 1284
    return-void

    .line 1286
    :cond_0
    iget-object v13, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v13}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->toPath(Landroid/graphics/Path;)V

    .line 1287
    iget-object v13, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    .line 1289
    .local v13, "path":Landroid/graphics/Path;
    iget-object v14, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    invoke-virtual {v14}, Landroid/graphics/Path;->reset()V

    .line 1291
    invoke-virtual/range {p2 .. p2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->isClipPath()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1292
    iget-object v12, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    iget v14, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mFillRule:I

    if-nez v14, :cond_1

    sget-object v14, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_0

    .line 1293
    :cond_1
    sget-object v14, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 1292
    :goto_0
    invoke-virtual {v12, v14}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1294
    iget-object v12, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    iget-object v14, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 1295
    iget-object v12, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    invoke-virtual {v2, v12}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    move/from16 v16, v5

    goto/16 :goto_7

    .line 1297
    :cond_2
    move-object v14, v1

    check-cast v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;

    .line 1298
    .local v14, "fullPath":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    iget v15, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    cmpl-float v15, v15, v12

    const/high16 v16, 0x3f800000    # 1.0f

    if-nez v15, :cond_4

    iget v15, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    cmpl-float v15, v15, v16

    if-eqz v15, :cond_3

    goto :goto_1

    :cond_3
    move/from16 v16, v5

    goto :goto_3

    .line 1299
    :cond_4
    :goto_1
    iget v15, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    iget v12, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    add-float/2addr v15, v12

    rem-float v15, v15, v16

    .line 1300
    .local v15, "start":F
    iget v12, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    iget v1, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    add-float/2addr v12, v1

    rem-float v12, v12, v16

    .line 1302
    .local v12, "end":F
    iget-object v1, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    if-nez v1, :cond_5

    .line 1303
    new-instance v1, Landroid/graphics/PathMeasure;

    invoke-direct {v1}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v1, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 1305
    :cond_5
    iget-object v1, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    iget-object v4, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    move/from16 v16, v5

    .end local v5    # "scaleX":F
    .local v16, "scaleX":F
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 1307
    iget-object v1, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    .line 1308
    .local v1, "len":F
    mul-float/2addr v15, v1

    .line 1309
    mul-float/2addr v12, v1

    .line 1310
    invoke-virtual {v13}, Landroid/graphics/Path;->reset()V

    .line 1311
    cmpl-float v4, v15, v12

    if-lez v4, :cond_6

    .line 1312
    iget-object v4, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    const/4 v5, 0x1

    invoke-virtual {v4, v15, v1, v13, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 1313
    iget-object v4, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    move/from16 v17, v1

    const/4 v1, 0x0

    .end local v1    # "len":F
    .local v17, "len":F
    invoke-virtual {v4, v1, v12, v13, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto :goto_2

    .line 1315
    .end local v17    # "len":F
    .restart local v1    # "len":F
    :cond_6
    move/from16 v17, v1

    const/4 v1, 0x0

    const/4 v5, 0x1

    .end local v1    # "len":F
    .restart local v17    # "len":F
    iget-object v4, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v4, v15, v12, v13, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 1317
    :goto_2
    invoke-virtual {v13, v1, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 1319
    .end local v12    # "end":F
    .end local v15    # "start":F
    .end local v17    # "len":F
    :goto_3
    iget-object v1, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    iget-object v4, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v13, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 1321
    iget-object v1, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v1}, Landroidx/core/content/res/ComplexColorCompat;->willDraw()Z

    move-result v1

    const/high16 v4, 0x437f0000    # 255.0f

    if-eqz v1, :cond_a

    .line 1322
    iget-object v1, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Landroidx/core/content/res/ComplexColorCompat;

    .line 1323
    .local v1, "fill":Landroidx/core/content/res/ComplexColorCompat;
    iget-object v15, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    if-nez v15, :cond_7

    .line 1324
    new-instance v15, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v15, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v15, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    .line 1325
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v15, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1328
    :cond_7
    iget-object v5, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    .line 1329
    .local v5, "fillPaint":Landroid/graphics/Paint;
    invoke-virtual {v1}, Landroidx/core/content/res/ComplexColorCompat;->isGradient()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 1330
    invoke-virtual {v1}, Landroidx/core/content/res/ComplexColorCompat;->getShader()Landroid/graphics/Shader;

    move-result-object v15

    .line 1331
    .local v15, "shader":Landroid/graphics/Shader;
    iget-object v12, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v15, v12}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1332
    invoke-virtual {v5, v15}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1333
    iget v12, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    mul-float/2addr v12, v4

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1334
    .end local v15    # "shader":Landroid/graphics/Shader;
    goto :goto_4

    .line 1335
    :cond_8
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1336
    const/16 v12, 0xff

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1337
    invoke-virtual {v1}, Landroidx/core/content/res/ComplexColorCompat;->getColor()I

    move-result v12

    iget v15, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    invoke-static {v12, v15}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->applyAlpha(IF)I

    move-result v12

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 1339
    :goto_4
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1340
    iget-object v12, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    iget v15, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    if-nez v15, :cond_9

    sget-object v15, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_5

    .line 1341
    :cond_9
    sget-object v15, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 1340
    :goto_5
    invoke-virtual {v12, v15}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1342
    iget-object v12, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    invoke-virtual {v2, v12, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1345
    .end local v1    # "fill":Landroidx/core/content/res/ComplexColorCompat;
    .end local v5    # "fillPaint":Landroid/graphics/Paint;
    :cond_a
    iget-object v1, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Landroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {v1}, Landroidx/core/content/res/ComplexColorCompat;->willDraw()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1346
    iget-object v1, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Landroidx/core/content/res/ComplexColorCompat;

    .line 1347
    .local v1, "strokeColor":Landroidx/core/content/res/ComplexColorCompat;
    iget-object v5, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    if-nez v5, :cond_b

    .line 1348
    new-instance v5, Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-direct {v5, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    .line 1349
    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1352
    :cond_b
    iget-object v5, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    .line 1353
    .local v5, "strokePaint":Landroid/graphics/Paint;
    iget-object v12, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    if-eqz v12, :cond_c

    .line 1354
    iget-object v12, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1357
    :cond_c
    iget-object v12, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    if-eqz v12, :cond_d

    .line 1358
    iget-object v12, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1361
    :cond_d
    iget v12, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 1362
    invoke-virtual {v1}, Landroidx/core/content/res/ComplexColorCompat;->isGradient()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1363
    invoke-virtual {v1}, Landroidx/core/content/res/ComplexColorCompat;->getShader()Landroid/graphics/Shader;

    move-result-object v12

    .line 1364
    .local v12, "shader":Landroid/graphics/Shader;
    iget-object v15, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v12, v15}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1365
    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1366
    iget v15, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    mul-float/2addr v15, v4

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1367
    .end local v12    # "shader":Landroid/graphics/Shader;
    goto :goto_6

    .line 1368
    :cond_e
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1369
    const/16 v4, 0xff

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1370
    invoke-virtual {v1}, Landroidx/core/content/res/ComplexColorCompat;->getColor()I

    move-result v4

    iget v12, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    invoke-static {v4, v12}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->applyAlpha(IF)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1373
    :goto_6
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1374
    mul-float v4, v8, v11

    .line 1375
    .local v4, "finalStrokeScale":F
    iget v12, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    mul-float/2addr v12, v4

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1376
    iget-object v12, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    invoke-virtual {v2, v12, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1379
    .end local v1    # "strokeColor":Landroidx/core/content/res/ComplexColorCompat;
    .end local v4    # "finalStrokeScale":F
    .end local v5    # "strokePaint":Landroid/graphics/Paint;
    .end local v14    # "fullPath":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
    :cond_f
    :goto_7
    return-void
.end method

.method private getMatrixScale(Landroid/graphics/Matrix;)F
    .locals 10
    .param p1, "groupStackedMatrix"    # Landroid/graphics/Matrix;

    .line 1396
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 1397
    .local v0, "unitVectors":[F
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 1398
    const/4 v1, 0x0

    aget v2, v0, v1

    float-to-double v2, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    float-to-double v5, v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 1399
    .local v2, "scaleX":F
    const/4 v3, 0x2

    aget v5, v0, v3

    float-to-double v5, v5

    const/4 v7, 0x3

    aget v8, v0, v7

    float-to-double v8, v8

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v5, v5

    .line 1400
    .local v5, "scaleY":F
    aget v1, v0, v1

    aget v4, v0, v4

    aget v3, v0, v3

    aget v6, v0, v7

    invoke-static {v1, v4, v3, v6}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->cross(FFFF)F

    move-result v1

    .line 1402
    .local v1, "crossProduct":F
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1404
    .local v3, "maxScale":F
    const/4 v4, 0x0

    .line 1405
    .local v4, "matrixScale":F
    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-lez v6, :cond_0

    .line 1406
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float v4, v6, v3

    .line 1411
    :cond_0
    return v4

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "filter"    # Landroid/graphics/ColorFilter;

    .line 1267
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    sget-object v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->drawGroupTree(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .line 1268
    return-void
.end method

.method public getAlpha()F
    .locals 2

    .line 1216
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getRootAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getRootAlpha()I
    .locals 1

    .line 1205
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 1415
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1416
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->isStateful()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    .line 1418
    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onStateChanged([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .line 1422
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->onStateChanged([I)Z

    move-result v0

    return v0
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .line 1211
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->setRootAlpha(I)V

    .line 1212
    return-void
.end method

.method public setRootAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 1201
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    .line 1202
    return-void
.end method
