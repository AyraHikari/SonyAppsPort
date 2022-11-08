.class public final Lcom/android/launcher3/widget/util/WidgetSizes;
.super Ljava/lang/Object;
.source "WidgetSizes.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMinMaxSizes(Ljava/util/List;)Landroid/graphics/Rect;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/SizeF;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .line 177
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/SizeF;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0

    .line 180
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SizeF;

    .line 181
    .local v0, "first":Landroid/util/SizeF;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    float-to-int v3, v3

    .line 182
    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 183
    .local v1, "result":Landroid/graphics/Rect;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 184
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SizeF;

    invoke-virtual {v3}, Landroid/util/SizeF;->getWidth()F

    move-result v3

    float-to-int v3, v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SizeF;

    invoke-virtual {v4}, Landroid/util/SizeF;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->union(II)V

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public static getWidgetItemSizePx(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/model/WidgetItem;)Landroid/util/Size;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "profile"    # Lcom/android/launcher3/DeviceProfile;
    .param p2, "widgetItem"    # Lcom/android/launcher3/model/WidgetItem;

    .line 99
    invoke-virtual {p2}, Lcom/android/launcher3/model/WidgetItem;->isShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$dimen;->widget_preview_shortcut_padding:I

    .line 101
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 102
    .local v0, "dimension":I
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, v0}, Landroid/util/Size;-><init>(II)V

    return-object v1

    .line 104
    .end local v0    # "dimension":I
    :cond_0
    iget v0, p2, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    iget v1, p2, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetSizePx(Lcom/android/launcher3/DeviceProfile;IILandroid/graphics/Point;)Landroid/util/Size;

    move-result-object v0

    .line 106
    .local v0, "widgetItemSize":Landroid/util/Size;
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->shouldInsetWidgets()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 108
    .local v1, "inset":Landroid/graphics/Rect;
    iget-object v2, p2, Lcom/android/launcher3/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    invoke-static {p0, v2, v1}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 109
    new-instance v2, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    .line 110
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    .line 109
    return-object v2

    .line 112
    .end local v1    # "inset":Landroid/graphics/Rect;
    :cond_1
    return-object v0
.end method

.method public static getWidgetPaddedSizePx(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/DeviceProfile;II)Landroid/util/Size;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "profile"    # Lcom/android/launcher3/DeviceProfile;
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I

    .line 79
    invoke-static {p2, p3, p4}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetSizePx(Lcom/android/launcher3/DeviceProfile;II)Landroid/util/Size;

    move-result-object v0

    .line 80
    .local v0, "size":Landroid/util/Size;
    invoke-virtual {p2}, Lcom/android/launcher3/DeviceProfile;->shouldInsetWidgets()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    return-object v0

    .line 83
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 84
    .local v1, "padding":Landroid/graphics/Rect;
    new-instance v2, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 85
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    .line 84
    return-object v2
.end method

.method public static getWidgetPaddedSizes(Landroid/content/Context;Landroid/content/ComponentName;II)Ljava/util/ArrayList;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ComponentName;",
            "II)",
            "Ljava/util/ArrayList<",
            "Landroid/util/SizeF;",
            ">;"
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 53
    .local v0, "padding":Landroid/graphics/Rect;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    .local v1, "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/SizeF;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 55
    .local v2, "density":F
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 57
    .local v3, "cellSize":Landroid/graphics/Point;
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/DeviceProfile;

    .line 58
    .local v5, "profile":Lcom/android/launcher3/DeviceProfile;
    invoke-static {v5, p2, p3, v3}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetSizePx(Lcom/android/launcher3/DeviceProfile;IILandroid/graphics/Point;)Landroid/util/Size;

    move-result-object v6

    .line 59
    .local v6, "widgetSizePx":Landroid/util/Size;
    invoke-virtual {v5}, Lcom/android/launcher3/DeviceProfile;->shouldInsetWidgets()Z

    move-result v7

    if-nez v7, :cond_0

    .line 60
    new-instance v7, Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v8

    iget v9, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget v9, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    .line 61
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v9

    iget v10, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    invoke-direct {v7, v8, v9}, Landroid/util/Size;-><init>(II)V

    move-object v6, v7

    .line 63
    :cond_0
    new-instance v7, Landroid/util/SizeF;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v2

    .line 64
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v2

    invoke-direct {v7, v8, v9}, Landroid/util/SizeF;-><init>(FF)V

    .line 63
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .end local v5    # "profile":Lcom/android/launcher3/DeviceProfile;
    .end local v6    # "widgetSizePx":Landroid/util/Size;
    goto :goto_0

    .line 66
    :cond_1
    return-object v1
.end method

.method public static getWidgetSizeOptions(Landroid/content/Context;Landroid/content/ComponentName;II)Landroid/os/Bundle;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I

    .line 156
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetPaddedSizes(Landroid/content/Context;Landroid/content/ComponentName;II)Ljava/util/ArrayList;

    move-result-object v0

    .line 158
    .local v0, "paddedSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/SizeF;>;"
    invoke-static {v0}, Lcom/android/launcher3/widget/util/WidgetSizes;->getMinMaxSizes(Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v1

    .line 159
    .local v1, "rect":Landroid/graphics/Rect;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 160
    .local v2, "options":Landroid/os/Bundle;
    iget v3, v1, Landroid/graphics/Rect;->left:I

    const-string v4, "appWidgetMinWidth"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    iget v3, v1, Landroid/graphics/Rect;->top:I

    const-string v4, "appWidgetMinHeight"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    iget v3, v1, Landroid/graphics/Rect;->right:I

    const-string v4, "appWidgetMaxWidth"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 163
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    const-string v4, "appWidgetMaxHeight"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 164
    const-string v3, "appWidgetSizes"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 165
    return-object v2
.end method

.method public static getWidgetSizePx(Lcom/android/launcher3/DeviceProfile;II)Landroid/util/Size;
    .locals 1
    .param p0, "profile"    # Lcom/android/launcher3/DeviceProfile;
    .param p1, "spanX"    # I
    .param p2, "spanY"    # I

    .line 71
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetSizePx(Lcom/android/launcher3/DeviceProfile;IILandroid/graphics/Point;)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method private static getWidgetSizePx(Lcom/android/launcher3/DeviceProfile;IILandroid/graphics/Point;)Landroid/util/Size;
    .locals 5
    .param p0, "profile"    # Lcom/android/launcher3/DeviceProfile;
    .param p1, "spanX"    # I
    .param p2, "spanY"    # I
    .param p3, "recycledCellSize"    # Landroid/graphics/Point;

    .line 117
    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v0, v1

    .line 118
    .local v0, "hBorderSpacing":I
    add-int/lit8 v1, p2, -0x1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    mul-int/2addr v1, v2

    .line 119
    .local v1, "vBorderSpacing":I
    if-nez p3, :cond_0

    .line 120
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    move-object p3, v2

    .line 122
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/launcher3/DeviceProfile;->getCellSize(Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 123
    new-instance v2, Landroid/util/Size;

    iget v3, p3, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    iget v4, p3, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, p2

    add-int/2addr v4, v1

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    return-object v2
.end method

.method public static updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V
    .locals 6
    .param p0, "widgetView"    # Landroid/appwidget/AppWidgetHostView;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I

    .line 135
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 136
    .local v0, "widgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    .line 137
    .local v1, "widgetId":I
    if-gtz v1, :cond_0

    .line 138
    return-void

    .line 140
    :cond_0
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {p1, v2, p2, p3}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetSizeOptions(Landroid/content/Context;Landroid/content/ComponentName;II)Landroid/os/Bundle;

    move-result-object v2

    .line 142
    .local v2, "sizeOptions":Landroid/os/Bundle;
    const-string v3, "appWidgetSizes"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 144
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 143
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    return-void

    .line 148
    :cond_1
    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    .line 149
    return-void
.end method
