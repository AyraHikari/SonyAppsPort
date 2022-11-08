.class public final Lcom/android/launcher3/InvariantDeviceProfile$GridOption;
.super Ljava/lang/Object;
.source "InvariantDeviceProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/InvariantDeviceProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GridOption"
.end annotation


# static fields
.field private static final DEVICE_CATEGORY_ALL:I = 0x7

.field private static final DEVICE_CATEGORY_MULTI_DISPLAY:I = 0x4

.field private static final DEVICE_CATEGORY_PHONE:I = 0x1

.field private static final DEVICE_CATEGORY_TABLET:I = 0x2

.field public static final TAG_NAME:Ljava/lang/String; = "grid-option"


# instance fields
.field private final dbFile:Ljava/lang/String;

.field private final defaultLayoutId:I

.field private final demoModeLayoutId:I

.field private final devicePaddingId:I

.field private final extraAttrs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field

.field private final hotseatColumnSpan:[I

.field public final isEnabled:Z

.field private final isScalable:Z

.field public final name:Ljava/lang/String;

.field private final numAllAppsColumns:I

.field public final numColumns:I

.field private final numDatabaseAllAppsColumns:I

.field private final numDatabaseHotseatIcons:I

.field private final numFolderColumns:I

.field private final numFolderRows:I

.field private final numHotseatIcons:I

.field public final numRows:I

.field public final numSearchContainerColumns:I

.field private final numShrunkenHotseatIcons:I


# direct methods
.method static bridge synthetic -$$Nest$fgetdbFile(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->dbFile:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdefaultLayoutId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->defaultLayoutId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdemoModeLayoutId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->demoModeLayoutId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdevicePaddingId(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->devicePaddingId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetextraAttrs(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->extraAttrs:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethotseatColumnSpan(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)[I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->hotseatColumnSpan:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisScalable(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->isScalable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnumAllAppsColumns(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numAllAppsColumns:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnumDatabaseAllAppsColumns(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numDatabaseAllAppsColumns:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnumDatabaseHotseatIcons(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numDatabaseHotseatIcons:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnumFolderColumns(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numFolderColumns:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnumFolderRows(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numFolderRows:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnumHotseatIcons(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numHotseatIcons:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnumShrunkenHotseatIcons(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numShrunkenHotseatIcons:I

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "deviceType"    # I

    .line 840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 828
    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->hotseatColumnSpan:[I

    .line 841
    sget-object v2, Lcom/android/launcher3/R$styleable;->GridDisplayOption:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 843
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/android/launcher3/R$styleable;->GridDisplayOption_name:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->name:Ljava/lang/String;

    .line 844
    sget v3, Lcom/android/launcher3/R$styleable;->GridDisplayOption_numRows:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numRows:I

    .line 845
    sget v5, Lcom/android/launcher3/R$styleable;->GridDisplayOption_numColumns:I

    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numColumns:I

    .line 846
    sget v6, Lcom/android/launcher3/R$styleable;->GridDisplayOption_numSearchContainerColumns:I

    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numSearchContainerColumns:I

    .line 849
    sget v6, Lcom/android/launcher3/R$styleable;->GridDisplayOption_dbFile:I

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->dbFile:Ljava/lang/String;

    .line 850
    const/4 v6, 0x1

    if-ne p3, v6, :cond_0

    sget v7, Lcom/android/launcher3/R$styleable;->GridDisplayOption_defaultSplitDisplayLayoutId:I

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 852
    sget v7, Lcom/android/launcher3/R$styleable;->GridDisplayOption_defaultSplitDisplayLayoutId:I

    goto :goto_0

    .line 853
    :cond_0
    sget v7, Lcom/android/launcher3/R$styleable;->GridDisplayOption_defaultLayoutId:I

    :goto_0
    nop

    .line 850
    invoke-virtual {v2, v7, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->defaultLayoutId:I

    .line 854
    sget v8, Lcom/android/launcher3/R$styleable;->GridDisplayOption_demoModeLayoutId:I

    invoke-virtual {v2, v8, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->demoModeLayoutId:I

    .line 857
    sget v7, Lcom/android/launcher3/R$styleable;->GridDisplayOption_numAllAppsColumns:I

    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numAllAppsColumns:I

    .line 859
    sget v8, Lcom/android/launcher3/R$styleable;->GridDisplayOption_numExtendedAllAppsColumns:I

    const/4 v9, 0x2

    mul-int/2addr v7, v9

    invoke-virtual {v2, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numDatabaseAllAppsColumns:I

    .line 862
    sget v7, Lcom/android/launcher3/R$styleable;->GridDisplayOption_numHotseatIcons:I

    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numHotseatIcons:I

    .line 864
    sget v8, Lcom/android/launcher3/R$styleable;->GridDisplayOption_numShrunkenHotseatIcons:I

    div-int/lit8 v10, v7, 0x2

    invoke-virtual {v2, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numShrunkenHotseatIcons:I

    .line 866
    sget v8, Lcom/android/launcher3/R$styleable;->GridDisplayOption_numExtendedHotseatIcons:I

    mul-int/2addr v7, v9

    invoke-virtual {v2, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numDatabaseHotseatIcons:I

    .line 868
    sget v7, Lcom/android/launcher3/R$styleable;->GridDisplayOption_hotseatColumnSpan:I

    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aput v7, v1, v4

    .line 870
    sget v7, Lcom/android/launcher3/R$styleable;->GridDisplayOption_hotseatColumnSpanLandscape:I

    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aput v7, v1, v6

    .line 872
    const/4 v7, 0x3

    sget v8, Lcom/android/launcher3/R$styleable;->GridDisplayOption_hotseatColumnSpanTwoPanelLandscape:I

    invoke-virtual {v2, v8, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    aput v8, v1, v7

    .line 875
    sget v7, Lcom/android/launcher3/R$styleable;->GridDisplayOption_hotseatColumnSpanTwoPanelPortrait:I

    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aput v7, v1, v9

    .line 879
    sget v1, Lcom/android/launcher3/R$styleable;->GridDisplayOption_numFolderRows:I

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numFolderRows:I

    .line 881
    sget v1, Lcom/android/launcher3/R$styleable;->GridDisplayOption_numFolderColumns:I

    invoke-virtual {v2, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numFolderColumns:I

    .line 884
    sget v1, Lcom/android/launcher3/R$styleable;->GridDisplayOption_isScalable:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->isScalable:Z

    .line 886
    sget v1, Lcom/android/launcher3/R$styleable;->GridDisplayOption_devicePaddingId:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->devicePaddingId:I

    .line 889
    sget v1, Lcom/android/launcher3/R$styleable;->GridDisplayOption_deviceCategory:I

    const/4 v3, 0x7

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 891
    .local v1, "deviceCategory":I
    if-nez p3, :cond_1

    and-int/lit8 v3, v1, 0x1

    if-eq v3, v6, :cond_3

    :cond_1
    if-ne p3, v9, :cond_2

    and-int/lit8 v3, v1, 0x2

    if-eq v3, v9, :cond_3

    :cond_2
    if-ne p3, v6, :cond_4

    and-int/lit8 v3, v1, 0x4

    if-ne v3, v0, :cond_4

    :cond_3
    move v4, v6

    :cond_4
    iput-boolean v4, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->isEnabled:Z

    .line 899
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 900
    sget-object v0, Lcom/android/launcher3/R$styleable;->GridDisplayOption:[I

    .line 901
    invoke-static {v0}, Lcom/android/launcher3/util/IntArray;->wrap([I)Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    .line 900
    invoke-static {p1, p2, v0}, Lcom/android/launcher3/util/Themes;->createValueMap(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/launcher3/util/IntArray;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->extraAttrs:Landroid/util/SparseArray;

    .line 902
    return-void
.end method
