.class final Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
.super Ljava/lang/Object;
.source "InvariantDeviceProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/InvariantDeviceProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DisplayOption"
.end annotation


# static fields
.field private static final DONT_INLINE_QSB:I = 0x0

.field private static final INLINE_QSB_FOR_LANDSCAPE:I = 0x2

.field private static final INLINE_QSB_FOR_PORTRAIT:I = 0x1

.field private static final INLINE_QSB_FOR_TWO_PANEL_LANDSCAPE:I = 0x8

.field private static final INLINE_QSB_FOR_TWO_PANEL_PORTRAIT:I = 0x4


# instance fields
.field private final allAppsBorderSpaces:[Landroid/graphics/PointF;

.field private final allAppsCellSize:[Landroid/graphics/PointF;

.field private final allAppsIconSizes:[F

.field private final allAppsIconTextSizes:[F

.field private final borderSpaces:[Landroid/graphics/PointF;

.field private final canBeDefault:Z

.field private folderBorderSpace:F

.field public final grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

.field private final horizontalMargin:[F

.field private final hotseatBorderSpaces:[F

.field private final iconSizes:[F

.field private final inlineQsb:[Z

.field private final minCellSize:[Landroid/graphics/PointF;

.field private final minHeightDps:F

.field private final minWidthDps:F

.field private final textSizes:[F


# direct methods
.method static bridge synthetic -$$Nest$fgetallAppsBorderSpaces(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetallAppsCellSize(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetallAppsIconSizes(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetallAppsIconTextSizes(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetborderSpaces(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->borderSpaces:[Landroid/graphics/PointF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcanBeDefault(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->canBeDefault:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfolderBorderSpace(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->folderBorderSpace:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethorizontalMargin(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->horizontalMargin:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethotseatBorderSpaces(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatBorderSpaces:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeticonSizes(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->iconSizes:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinlineQsb(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->inlineQsb:[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetminCellSize(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minCellSize:[Landroid/graphics/PointF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetminHeightDps(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minHeightDps:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetminWidthDps(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minWidthDps:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettextSizes(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$madd(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->add(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmultiply(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;F)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->multiply(F)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>()V
    .locals 1

    .line 1156
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;-><init>(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)V

    .line 1157
    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)V
    .locals 6
    .param p1, "grid"    # Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    .line 1159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 918
    const/4 v0, 0x4

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->inlineQsb:[Z

    .line 920
    new-array v1, v0, [Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minCellSize:[Landroid/graphics/PointF;

    .line 923
    new-array v1, v0, [Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->borderSpaces:[Landroid/graphics/PointF;

    .line 924
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->horizontalMargin:[F

    .line 926
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatBorderSpaces:[F

    .line 928
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->iconSizes:[F

    .line 929
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    .line 931
    new-array v1, v0, [Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    .line 932
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    .line 933
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    .line 934
    new-array v1, v0, [Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    .line 1160
    iput-object p1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    .line 1161
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minWidthDps:F

    .line 1162
    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minHeightDps:F

    .line 1163
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->canBeDefault:Z

    .line 1164
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 1165
    iget-object v4, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->iconSizes:[F

    aput v1, v4, v3

    .line 1166
    iget-object v4, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    aput v1, v4, v3

    .line 1167
    iget-object v4, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->borderSpaces:[Landroid/graphics/PointF;

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    aput-object v5, v4, v3

    .line 1168
    iget-object v4, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minCellSize:[Landroid/graphics/PointF;

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    aput-object v5, v4, v3

    .line 1169
    iget-object v4, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    aput-object v5, v4, v3

    .line 1170
    iget-object v4, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    aput v1, v4, v3

    .line 1171
    iget-object v4, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    aput v1, v4, v3

    .line 1172
    iget-object v4, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    aput-object v5, v4, v3

    .line 1173
    iget-object v4, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->inlineQsb:[Z

    aput-boolean v2, v4, v3

    .line 1164
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1175
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 24
    .param p1, "grid"    # Lcom/android/launcher3/InvariantDeviceProfile$GridOption;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 936
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 918
    const/4 v1, 0x4

    new-array v2, v1, [Z

    iput-object v2, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->inlineQsb:[Z

    .line 920
    new-array v3, v1, [Landroid/graphics/PointF;

    iput-object v3, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minCellSize:[Landroid/graphics/PointF;

    .line 923
    new-array v4, v1, [Landroid/graphics/PointF;

    iput-object v4, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->borderSpaces:[Landroid/graphics/PointF;

    .line 924
    new-array v5, v1, [F

    iput-object v5, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->horizontalMargin:[F

    .line 926
    new-array v6, v1, [F

    iput-object v6, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatBorderSpaces:[F

    .line 928
    new-array v7, v1, [F

    iput-object v7, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->iconSizes:[F

    .line 929
    new-array v8, v1, [F

    iput-object v8, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    .line 931
    new-array v9, v1, [Landroid/graphics/PointF;

    iput-object v9, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    .line 932
    new-array v10, v1, [F

    iput-object v10, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    .line 933
    new-array v11, v1, [F

    iput-object v11, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    .line 934
    new-array v12, v1, [Landroid/graphics/PointF;

    iput-object v12, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    .line 937
    move-object/from16 v13, p1

    iput-object v13, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    .line 939
    sget-object v14, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption:[I

    move-object/from16 v15, p2

    move-object/from16 v1, p3

    invoke-virtual {v15, v1, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 941
    .local v14, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_minWidthDps:I

    const/4 v13, 0x0

    invoke-virtual {v14, v1, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minWidthDps:F

    .line 942
    sget v1, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_minHeightDps:I

    invoke-virtual {v14, v1, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minHeightDps:F

    .line 944
    sget v1, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_canBeDefault:I

    const/4 v13, 0x0

    invoke-virtual {v14, v1, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->canBeDefault:Z

    .line 946
    sget v1, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_inlineQsb:I

    invoke-virtual {v14, v1, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 948
    .local v1, "inlineForRotation":I
    and-int/lit8 v13, v1, 0x1

    const/4 v15, 0x1

    if-ne v13, v15, :cond_0

    move v13, v15

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    const/16 v17, 0x0

    aput-boolean v13, v2, v17

    .line 950
    and-int/lit8 v13, v1, 0x2

    const/4 v15, 0x2

    if-ne v13, v15, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    const/16 v18, 0x1

    aput-boolean v13, v2, v18

    .line 952
    and-int/lit8 v13, v1, 0x4

    const/4 v15, 0x4

    if-ne v13, v15, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    const/4 v15, 0x2

    aput-boolean v13, v2, v15

    .line 955
    and-int/lit8 v13, v1, 0x8

    const/16 v15, 0x8

    if-ne v13, v15, :cond_3

    const/4 v13, 0x1

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    :goto_3
    const/4 v15, 0x3

    aput-boolean v13, v2, v15

    .line 962
    sget v2, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_minCellWidth:I

    const/4 v13, 0x0

    invoke-virtual {v14, v2, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 963
    .local v2, "x":F
    sget v15, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_minCellHeight:I

    invoke-virtual {v14, v15, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    .line 964
    .local v15, "y":F
    new-instance v13, Landroid/graphics/PointF;

    invoke-direct {v13, v2, v15}, Landroid/graphics/PointF;-><init>(FF)V

    const/16 v17, 0x0

    aput-object v13, v3, v17

    .line 966
    sget v13, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_minCellWidthLandscape:I

    move/from16 v20, v1

    .end local v1    # "inlineForRotation":I
    .local v20, "inlineForRotation":I
    aget-object v1, v3, v17

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v14, v13, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 968
    .end local v2    # "x":F
    .local v1, "x":F
    sget v2, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_minCellHeightLandscape:I

    aget-object v13, v3, v17

    iget v13, v13, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14, v2, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 970
    .end local v15    # "y":F
    .local v2, "y":F
    new-instance v13, Landroid/graphics/PointF;

    invoke-direct {v13, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v15, 0x1

    aput-object v13, v3, v15

    .line 972
    sget v13, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_minCellWidthTwoPanelPortrait:I

    aget-object v15, v3, v17

    iget v15, v15, Landroid/graphics/PointF;->x:F

    invoke-virtual {v14, v13, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 974
    sget v13, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_minCellHeightTwoPanelPortrait:I

    aget-object v15, v3, v17

    iget v15, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14, v13, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 976
    new-instance v13, Landroid/graphics/PointF;

    invoke-direct {v13, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v15, 0x2

    aput-object v13, v3, v15

    .line 978
    sget v13, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_minCellWidthTwoPanelLandscape:I

    aget-object v15, v3, v17

    iget v15, v15, Landroid/graphics/PointF;->x:F

    invoke-virtual {v14, v13, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 980
    sget v13, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_minCellHeightTwoPanelLandscape:I

    aget-object v15, v3, v17

    iget v15, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14, v13, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 982
    new-instance v13, Landroid/graphics/PointF;

    invoke-direct {v13, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v15, 0x3

    aput-object v13, v3, v15

    .line 984
    sget v13, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_borderSpace:I

    const/4 v15, 0x0

    invoke-virtual {v14, v13, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    .line 985
    .local v13, "borderSpace":F
    sget v15, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_borderSpaceLandscape:I

    invoke-virtual {v14, v15, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    .line 987
    .local v15, "borderSpaceLandscape":F
    move/from16 v21, v1

    .end local v1    # "x":F
    .local v21, "x":F
    sget v1, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_borderSpaceTwoPanelPortrait:I

    invoke-virtual {v14, v1, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 989
    .local v1, "borderSpaceTwoPanelPortrait":F
    move/from16 v22, v2

    .end local v2    # "y":F
    .local v22, "y":F
    sget v2, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_borderSpaceTwoPanelLandscape:I

    invoke-virtual {v14, v2, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 992
    .local v2, "borderSpaceTwoPanelLandscape":F
    move-object/from16 v23, v6

    sget v6, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_borderSpaceHorizontal:I

    invoke-virtual {v14, v6, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 993
    .end local v21    # "x":F
    .local v6, "x":F
    move-object/from16 v21, v5

    sget v5, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_borderSpaceVertical:I

    invoke-virtual {v14, v5, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 994
    .end local v22    # "y":F
    .local v5, "y":F
    move-object/from16 v22, v11

    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/16 v17, 0x0

    aput-object v11, v4, v17

    .line 996
    sget v11, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_borderSpaceLandscapeHorizontal:I

    invoke-virtual {v14, v11, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 998
    sget v11, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_borderSpaceLandscapeVertical:I

    invoke-virtual {v14, v11, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 1000
    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/16 v18, 0x1

    aput-object v11, v4, v18

    .line 1002
    sget v11, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_borderSpaceTwoPanelPortraitHorizontal:I

    invoke-virtual {v14, v11, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 1005
    sget v11, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_borderSpaceTwoPanelPortraitVertical:I

    invoke-virtual {v14, v11, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 1008
    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/16 v19, 0x2

    aput-object v11, v4, v19

    .line 1010
    sget v11, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_borderSpaceTwoPanelLandscapeHorizontal:I

    invoke-virtual {v14, v11, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 1013
    sget v11, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_borderSpaceTwoPanelLandscapeVertical:I

    invoke-virtual {v14, v11, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 1016
    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/16 v16, 0x3

    aput-object v11, v4, v16

    .line 1018
    iput v13, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->folderBorderSpace:F

    .line 1020
    sget v4, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_allAppsCellWidth:I

    const/4 v11, 0x0

    aget-object v0, v3, v11

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v14, v4, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 1022
    .end local v6    # "x":F
    .local v0, "x":F
    sget v4, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_allAppsCellHeight:I

    aget-object v3, v3, v11

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14, v4, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 1024
    .end local v5    # "y":F
    .local v3, "y":F
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v4, v9, v11

    .line 1026
    sget v4, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_allAppsCellWidthLandscape:I

    aget-object v5, v9, v11

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-virtual {v14, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 1028
    sget v4, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_allAppsCellHeightLandscape:I

    aget-object v5, v9, v11

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 1030
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x1

    aput-object v4, v9, v5

    .line 1032
    sget v4, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_allAppsCellWidthTwoPanelPortrait:I

    aget-object v5, v9, v11

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-virtual {v14, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 1034
    sget v4, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_allAppsCellHeightTwoPanelPortrait:I

    aget-object v5, v9, v11

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 1036
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x2

    aput-object v4, v9, v5

    .line 1038
    sget v4, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_allAppsCellWidthTwoPanelLandscape:I

    aget-object v5, v9, v11

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-virtual {v14, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 1040
    sget v4, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_allAppsCellHeightTwoPanelLandscape:I

    aget-object v5, v9, v11

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 1042
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x3

    aput-object v4, v9, v5

    .line 1044
    sget v4, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_allAppsBorderSpace:I

    invoke-virtual {v14, v4, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 1046
    .local v4, "allAppsBorderSpace":F
    sget v5, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_allAppsBorderSpaceLandscape:I

    invoke-virtual {v14, v5, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 1049
    .local v5, "allAppsBorderSpaceLandscape":F
    sget v6, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_allAppsBorderSpaceTwoPanelPortrait:I

    invoke-virtual {v14, v6, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 1052
    .local v6, "allAppsBorderSpaceTwoPanelPortrait":F
    sget v9, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_allAppsBorderSpaceTwoPanelLandscape:I

    invoke-virtual {v14, v9, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    .line 1056
    .local v9, "allAppsBorderSpaceTwoPanelLandscape":F
    sget v11, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_allAppsBorderSpaceHorizontal:I

    invoke-virtual {v14, v11, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 1058
    sget v11, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_allAppsBorderSpaceVertical:I

    invoke-virtual {v14, v11, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 1060
    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/16 v17, 0x0

    aput-object v11, v12, v17

    .line 1062
    sget v11, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_allAppsBorderSpaceLandscapeHorizontal:I

    invoke-virtual {v14, v11, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 1064
    sget v11, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_allAppsBorderSpaceLandscapeVertical:I

    invoke-virtual {v14, v11, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 1066
    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/16 v18, 0x1

    aput-object v11, v12, v18

    .line 1068
    sget v11, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_allAppsBorderSpaceTwoPanelPortraitHorizontal:I

    invoke-virtual {v14, v11, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 1071
    sget v11, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_allAppsBorderSpaceTwoPanelPortraitVertical:I

    invoke-virtual {v14, v11, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 1074
    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/16 v19, 0x2

    aput-object v11, v12, v19

    .line 1076
    sget v11, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_allAppsBorderSpaceTwoPanelLandscapeHorizontal:I

    invoke-virtual {v14, v11, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 1079
    sget v11, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_allAppsBorderSpaceTwoPanelLandscapeVertical:I

    invoke-virtual {v14, v11, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 1082
    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/16 v16, 0x3

    aput-object v11, v12, v16

    .line 1084
    sget v11, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_iconImageSize:I

    .line 1085
    const/4 v12, 0x0

    invoke-virtual {v14, v11, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    const/4 v12, 0x0

    aput v11, v7, v12

    .line 1086
    sget v11, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_iconSizeLandscape:I

    move/from16 v17, v0

    .end local v0    # "x":F
    .local v17, "x":F
    aget v0, v7, v12

    .line 1087
    invoke-virtual {v14, v11, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v11, 0x1

    aput v0, v7, v11

    .line 1089
    sget v0, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_iconSizeTwoPanelPortrait:I

    aget v11, v7, v12

    .line 1090
    invoke-virtual {v14, v0, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v11, 0x2

    aput v0, v7, v11

    .line 1092
    sget v0, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_iconSizeTwoPanelLandscape:I

    aget v11, v7, v12

    .line 1093
    invoke-virtual {v14, v0, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v11, 0x3

    aput v0, v7, v11

    .line 1096
    sget v0, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_allAppsIconSize:I

    aget v7, v7, v12

    invoke-virtual {v14, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    aput v0, v10, v12

    .line 1098
    const/4 v7, 0x1

    aput v0, v10, v7

    .line 1099
    sget v0, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_allAppsIconSizeTwoPanelPortrait:I

    aget v7, v10, v12

    invoke-virtual {v14, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v7, 0x2

    aput v0, v10, v7

    .line 1102
    sget v0, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_allAppsIconSizeTwoPanelLandscape:I

    aget v7, v10, v12

    invoke-virtual {v14, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v7, 0x3

    aput v0, v10, v7

    .line 1106
    sget v0, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_iconTextSize:I

    .line 1107
    const/4 v7, 0x0

    invoke-virtual {v14, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    aput v0, v8, v12

    .line 1108
    sget v0, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_iconTextSizeLandscape:I

    aget v7, v8, v12

    .line 1109
    invoke-virtual {v14, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v7, 0x1

    aput v0, v8, v7

    .line 1111
    sget v0, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_iconTextSizeTwoPanelPortrait:I

    aget v7, v8, v12

    .line 1112
    invoke-virtual {v14, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v7, 0x2

    aput v0, v8, v7

    .line 1114
    sget v0, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_iconTextSizeTwoPanelLandscape:I

    aget v7, v8, v12

    .line 1115
    invoke-virtual {v14, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v7, 0x3

    aput v0, v8, v7

    .line 1118
    sget v0, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_allAppsIconTextSize:I

    aget v7, v8, v12

    invoke-virtual {v14, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    aput v0, v22, v12

    .line 1120
    const/4 v7, 0x1

    aput v0, v22, v7

    .line 1121
    sget v0, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_allAppsIconTextSizeTwoPanelPortrait:I

    aget v7, v22, v12

    invoke-virtual {v14, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v7, 0x2

    aput v0, v22, v7

    .line 1124
    sget v0, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_allAppsIconTextSizeTwoPanelLandscape:I

    aget v7, v22, v12

    invoke-virtual {v14, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v7, 0x3

    aput v0, v22, v7

    .line 1128
    sget v0, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_horizontalMargin:I

    const/4 v7, 0x0

    invoke-virtual {v14, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    aput v0, v21, v12

    .line 1130
    sget v0, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_horizontalMarginLandscape:I

    aget v7, v21, v12

    invoke-virtual {v14, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v7, 0x1

    aput v0, v21, v7

    .line 1133
    sget v0, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_horizontalMarginTwoPanelLandscape:I

    aget v7, v21, v12

    invoke-virtual {v14, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v7, 0x3

    aput v0, v21, v7

    .line 1136
    sget v0, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_horizontalMarginTwoPanelPortrait:I

    aget v7, v21, v12

    invoke-virtual {v14, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v7, 0x2

    aput v0, v21, v7

    .line 1140
    sget v0, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_hotseatBorderSpace:I

    invoke-virtual {v14, v0, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    aput v0, v23, v12

    .line 1142
    sget v0, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_hotseatBorderSpaceLandscape:I

    aget v7, v23, v12

    invoke-virtual {v14, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v7, 0x1

    aput v0, v23, v7

    .line 1145
    sget v0, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_hotseatBorderSpaceTwoPanelLandscape:I

    aget v7, v23, v12

    invoke-virtual {v14, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v7, 0x3

    aput v0, v23, v7

    .line 1148
    sget v0, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption_hotseatBorderSpaceTwoPanelPortrait:I

    aget v7, v23, v12

    invoke-virtual {v14, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v7, 0x2

    aput v0, v23, v7

    .line 1152
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 1153
    return-void
.end method

.method private add(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    .locals 4
    .param p1, "p"    # Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    .line 1201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 1202
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->iconSizes:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->iconSizes:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 1203
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 1204
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->borderSpaces:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->borderSpaces:[Landroid/graphics/PointF;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 1205
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->borderSpaces:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->borderSpaces:[Landroid/graphics/PointF;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 1206
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minCellSize:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minCellSize:[Landroid/graphics/PointF;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 1207
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minCellSize:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minCellSize:[Landroid/graphics/PointF;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 1208
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->horizontalMargin:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->horizontalMargin:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 1209
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatBorderSpaces:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatBorderSpaces:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 1210
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 1211
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 1212
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 1213
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 1214
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 1215
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 1216
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->inlineQsb:[Z

    aget-boolean v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->inlineQsb:[Z

    aget-boolean v3, v3, v0

    or-int/2addr v2, v3

    aput-boolean v2, v1, v0

    .line 1201
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1219
    .end local v0    # "i":I
    :cond_0
    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->folderBorderSpace:F

    iget v1, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->folderBorderSpace:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->folderBorderSpace:F

    .line 1221
    return-object p0
.end method

.method private multiply(F)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    .locals 3
    .param p1, "w"    # F

    .line 1178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 1179
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->iconSizes:[F

    aget v2, v1, v0

    mul-float/2addr v2, p1

    aput v2, v1, v0

    .line 1180
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    aget v2, v1, v0

    mul-float/2addr v2, p1

    aput v2, v1, v0

    .line 1181
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->borderSpaces:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, p1

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 1182
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->borderSpaces:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p1

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 1183
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minCellSize:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, p1

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 1184
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minCellSize:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p1

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 1185
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->horizontalMargin:[F

    aget v2, v1, v0

    mul-float/2addr v2, p1

    aput v2, v1, v0

    .line 1186
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatBorderSpaces:[F

    aget v2, v1, v0

    mul-float/2addr v2, p1

    aput v2, v1, v0

    .line 1187
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, p1

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 1188
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p1

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 1189
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    aget v2, v1, v0

    mul-float/2addr v2, p1

    aput v2, v1, v0

    .line 1190
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    aget v2, v1, v0

    mul-float/2addr v2, p1

    aput v2, v1, v0

    .line 1191
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, p1

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 1192
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p1

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 1178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1195
    .end local v0    # "i":I
    :cond_0
    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->folderBorderSpace:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->folderBorderSpace:F

    .line 1197
    return-object p0
.end method
