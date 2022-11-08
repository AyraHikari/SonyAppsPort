.class public Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
.super Landroid/appwidget/AppWidgetProviderInfo;
.source "LauncherAppWidgetProviderInfo.java"

# interfaces
.implements Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;


# static fields
.field public static final CLS_CUSTOM_WIDGET_PREFIX:Ljava/lang/String; = "#custom-widget-"


# instance fields
.field private mIsMinSizeFulfilled:Z

.field public maxSpanX:I

.field public maxSpanY:I

.field public minSpanX:I

.field public minSpanY:I

.field public spanX:I

.field public spanY:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 97
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    .line 98
    return-void
.end method

.method public static fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 76
    instance-of v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    .line 77
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    .local v0, "launcherInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    goto :goto_0

    .line 84
    .end local v0    # "launcherInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 85
    .local v0, "p":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 86
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    new-instance v1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-direct {v1, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    .line 88
    .local v1, "launcherInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    move-object v0, v1

    .line 90
    .end local v1    # "launcherInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .local v0, "launcherInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    :goto_0
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->initSpans(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 91
    return-object v0
.end method

.method private getSpanX(Landroid/graphics/Rect;IIF)I
    .locals 2
    .param p1, "widgetPadding"    # Landroid/graphics/Rect;
    .param p2, "widgetWidth"    # I
    .param p3, "cellSpacing"    # I
    .param p4, "cellWidth"    # F

    .line 187
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    int-to-float v0, v0

    int-to-float v1, p3

    add-float/2addr v1, p4

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getSpanY(Landroid/graphics/Rect;IIF)I
    .locals 2
    .param p1, "widgetPadding"    # Landroid/graphics/Rect;
    .param p2, "widgetHeight"    # I
    .param p3, "cellSpacing"    # I
    .param p4, "cellHeight"    # F

    .line 193
    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    int-to-float v0, v0

    int-to-float v1, p3

    add-float/2addr v1, p4

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final getComponent()Landroid/content/ComponentName;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getFullResIcon(Lcom/android/launcher3/icons/IconCache;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "cache"    # Lcom/android/launcher3/icons/IconCache;

    .line 241
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->icon:I

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/icons/IconCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 199
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinSpans()Landroid/graphics/Point;
    .locals 4

    .line 203
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    goto :goto_0

    :cond_0
    move v1, v2

    .line 204
    :goto_0
    iget v3, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    iget v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    :cond_1
    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 203
    return-object v0
.end method

.method public final getUser()Landroid/os/UserHandle;
    .locals 1

    .line 236
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetFeatures()I
    .locals 1

    .line 212
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    if-eqz v0, :cond_0

    .line 213
    iget v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->widgetFeatures:I

    return v0

    .line 215
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initSpans(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "idp"    # Lcom/android/launcher3/InvariantDeviceProfile;

    .line 101
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 102
    .local v2, "minSpanX":I
    const/4 v3, 0x0

    .line 103
    .local v3, "minSpanY":I
    iget v4, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 104
    .local v4, "maxSpanX":I
    iget v5, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 105
    .local v5, "maxSpanY":I
    const/4 v6, 0x0

    .line 106
    .local v6, "spanX":I
    const/4 v7, 0x0

    .line 108
    .local v7, "spanY":I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 109
    .local v8, "widgetPadding":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 110
    .local v9, "localPadding":Landroid/graphics/Rect;
    iget-object v10, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v11, p1

    invoke-static {v11, v10, v8}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 112
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 113
    .local v10, "cellSize":Landroid/graphics/Point;
    iget-object v12, v1, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/DeviceProfile;

    .line 114
    .local v13, "dp":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {v13, v10}, Lcom/android/launcher3/DeviceProfile;->getCellSize(Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 118
    invoke-virtual {v13}, Lcom/android/launcher3/DeviceProfile;->shouldInsetWidgets()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 119
    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    .line 121
    :cond_0
    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 123
    :goto_1
    iget v14, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minResizeWidth:I

    iget-object v15, v13, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->x:I

    move-object/from16 v16, v8

    .end local v8    # "widgetPadding":Landroid/graphics/Rect;
    .local v16, "widgetPadding":Landroid/graphics/Rect;
    iget v8, v10, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    .line 124
    invoke-direct {v0, v9, v14, v15, v8}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpanX(Landroid/graphics/Rect;IIF)I

    move-result v8

    .line 123
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 126
    iget v8, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minResizeHeight:I

    iget-object v14, v13, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->y:I

    iget v15, v10, Landroid/graphics/Point;->y:I

    int-to-float v15, v15

    .line 127
    invoke-direct {v0, v9, v8, v14, v15}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpanY(Landroid/graphics/Rect;IIF)I

    move-result v8

    .line 126
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 130
    sget-boolean v8, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v8, :cond_2

    .line 131
    iget v8, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->maxResizeWidth:I

    if-lez v8, :cond_1

    .line 132
    iget v8, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->maxResizeWidth:I

    iget-object v14, v13, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->x:I

    iget v15, v10, Landroid/graphics/Point;->x:I

    int-to-float v15, v15

    invoke-direct {v0, v9, v8, v14, v15}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpanX(Landroid/graphics/Rect;IIF)I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 135
    :cond_1
    iget v8, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->maxResizeHeight:I

    if-lez v8, :cond_2

    .line 136
    iget v8, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->maxResizeHeight:I

    iget-object v14, v13, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->y:I

    iget v15, v10, Landroid/graphics/Point;->y:I

    int-to-float v15, v15

    invoke-direct {v0, v9, v8, v14, v15}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpanY(Landroid/graphics/Rect;IIF)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 141
    :cond_2
    iget v8, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minWidth:I

    iget-object v14, v13, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->x:I

    iget v15, v10, Landroid/graphics/Point;->x:I

    int-to-float v15, v15

    .line 142
    invoke-direct {v0, v9, v8, v14, v15}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpanX(Landroid/graphics/Rect;IIF)I

    move-result v8

    .line 141
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 144
    iget v8, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minHeight:I

    iget-object v14, v13, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->y:I

    iget v15, v10, Landroid/graphics/Point;->y:I

    int-to-float v15, v15

    .line 145
    invoke-direct {v0, v9, v8, v14, v15}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpanY(Landroid/graphics/Rect;IIF)I

    move-result v8

    .line 144
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 147
    .end local v13    # "dp":Lcom/android/launcher3/DeviceProfile;
    move-object/from16 v8, v16

    goto/16 :goto_0

    .line 149
    .end local v16    # "widgetPadding":Landroid/graphics/Rect;
    .restart local v8    # "widgetPadding":Landroid/graphics/Rect;
    :cond_3
    move-object/from16 v16, v8

    .end local v8    # "widgetPadding":Landroid/graphics/Rect;
    .restart local v16    # "widgetPadding":Landroid/graphics/Rect;
    sget-boolean v8, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v8, :cond_4

    .line 151
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 152
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 156
    iget v8, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->targetCellWidth:I

    if-lt v8, v2, :cond_4

    iget v8, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->targetCellWidth:I

    if-gt v8, v4, :cond_4

    iget v8, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->targetCellHeight:I

    if-lt v8, v3, :cond_4

    iget v8, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->targetCellHeight:I

    if-gt v8, v5, :cond_4

    .line 158
    iget v6, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->targetCellWidth:I

    .line 159
    iget v7, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->targetCellHeight:I

    .line 166
    :cond_4
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    .line 167
    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    .line 168
    iput v4, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->maxSpanX:I

    .line 169
    iput v5, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->maxSpanY:I

    .line 170
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v12, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    if-gt v8, v12, :cond_5

    .line 171
    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v12, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    if-gt v8, v12, :cond_5

    const/4 v8, 0x1

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    iput-boolean v8, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->mIsMinSizeFulfilled:Z

    .line 173
    iget v8, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanX:I

    .line 174
    iget v8, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanY:I

    .line 175
    return-void
.end method

.method public isConfigurationOptional()Z
    .locals 1

    .line 224
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->isReconfigurable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getWidgetFeatures()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 224
    :goto_0
    return v0
.end method

.method public isCustomWidget()Z
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#custom-widget-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMinSizeFulfilled()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->mIsMinSizeFulfilled:Z

    return v0
.end method

.method public isReconfigurable()Z
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getWidgetFeatures()I

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
