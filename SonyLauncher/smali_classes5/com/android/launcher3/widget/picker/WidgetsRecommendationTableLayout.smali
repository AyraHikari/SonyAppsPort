.class public final Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;
.super Landroid/widget/TableLayout;
.source "WidgetsRecommendationTableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;
    }
.end annotation


# static fields
.field private static final DOWN_SCALE_RATIO:F = 0.9f

.field private static final MAX_DOWN_SCALE_RATIO:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "WidgetsRecommendationTableLayout"


# instance fields
.field private mRecommendationTableMaxHeight:F

.field private mWidgetCellOnClickListener:Landroid/view/View$OnClickListener;

.field private mWidgetCellOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mWidgetCellTextViewsHeight:F

.field private final mWidgetCellVerticalPadding:F

.field private final mWidgetsRecommendationTableVerticalPadding:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mRecommendationTableMaxHeight:F

    .line 63
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->recommended_widgets_table_vertical_padding:I

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mWidgetsRecommendationTableVerticalPadding:F

    .line 65
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->widget_cell_vertical_padding:I

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mWidgetCellVerticalPadding:F

    .line 67
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->widget_cell_font_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mWidgetCellTextViewsHeight:F

    .line 68
    return-void
.end method

.method private addItemCell(Landroid/view/ViewGroup;)Lcom/android/launcher3/widget/WidgetCell;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 120
    nop

    .line 121
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 120
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->widget_cell:I

    .line 121
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetCell;

    .line 123
    .local v0, "widget":Lcom/android/launcher3/widget/WidgetCell;
    sget v1, Lcom/android/launcher3/R$id;->widget_preview_container:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 124
    .local v1, "previewContainer":Landroid/view/View;
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mWidgetCellOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mWidgetCellOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 126
    invoke-virtual {v0, v2}, Lcom/android/launcher3/widget/WidgetCell;->setAnimatePreview(Z)V

    .line 127
    const/16 v2, -0x6f

    invoke-virtual {v0, v2}, Lcom/android/launcher3/widget/WidgetCell;->setSourceContainer(I)V

    .line 129
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 130
    return-object v0
.end method

.method private bindData(Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;)V
    .locals 7
    .param p1, "data"    # Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;

    .line 97
    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;->-$$Nest$fgetmRecommendationTable(Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 98
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->setVisibility(I)V

    .line 99
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->removeAllViews()V

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;->-$$Nest$fgetmRecommendationTable(Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 105
    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;->-$$Nest$fgetmRecommendationTable(Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 106
    .local v1, "widgetItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    new-instance v2, Landroid/widget/TableRow;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 107
    .local v2, "tableRow":Landroid/widget/TableRow;
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/widget/TableRow;->setGravity(I)V

    .line 109
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/WidgetItem;

    .line 110
    .local v4, "widgetItem":Lcom/android/launcher3/model/WidgetItem;
    invoke-direct {p0, v2}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->addItemCell(Landroid/view/ViewGroup;)Lcom/android/launcher3/widget/WidgetCell;

    move-result-object v5

    .line 111
    .local v5, "widgetCell":Lcom/android/launcher3/widget/WidgetCell;
    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;->-$$Nest$fgetmPreviewScale(Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;)F

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/android/launcher3/widget/WidgetCell;->applyFromCellItem(Lcom/android/launcher3/model/WidgetItem;F)V

    .line 112
    invoke-virtual {v5}, Lcom/android/launcher3/widget/WidgetCell;->showBadge()V

    .line 113
    .end local v4    # "widgetItem":Lcom/android/launcher3/model/WidgetItem;
    .end local v5    # "widgetCell":Lcom/android/launcher3/widget/WidgetCell;
    goto :goto_1

    .line 114
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->addView(Landroid/view/View;)V

    .line 104
    .end local v1    # "widgetItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    .end local v2    # "tableRow":Landroid/widget/TableRow;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->setVisibility(I)V

    .line 117
    return-void
.end method

.method private fitRecommendedWidgetsToTableSpace(FLjava/util/List;)Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;
    .locals 11
    .param p1, "previewScale"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;>;)",
            "Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;"
        }
    .end annotation

    .line 136
    .local p2, "recommendedWidgetsInTable":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Lcom/android/launcher3/model/WidgetItem;>;>;"
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hide recommended widgets. Can\'t down scale previews to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetsRecommendationTableLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;-><init>(Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;Ljava/util/List;F)V

    return-object v0

    .line 141
    :cond_0
    iget v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mWidgetsRecommendationTableVerticalPadding:F

    .line 142
    .local v0, "totalHeight":F
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 143
    .local v1, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 144
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 145
    .local v3, "widgetItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    const/4 v4, 0x0

    .line 146
    .local v4, "rowHeight":F
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 147
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/WidgetItem;

    .line 148
    .local v6, "widgetItem":Lcom/android/launcher3/model/WidgetItem;
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1, v6}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetItemSizePx(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/model/WidgetItem;)Landroid/util/Size;

    move-result-object v7

    .line 150
    .local v7, "widgetSize":Landroid/util/Size;
    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, p1

    .line 151
    .local v8, "previewHeight":F
    iget v9, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mWidgetCellTextViewsHeight:F

    add-float/2addr v9, v8

    iget v10, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mWidgetCellVerticalPadding:F

    add-float/2addr v9, v10

    invoke-static {v4, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 146
    .end local v6    # "widgetItem":Lcom/android/launcher3/model/WidgetItem;
    .end local v7    # "widgetSize":Landroid/util/Size;
    .end local v8    # "previewHeight":F
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 154
    .end local v5    # "j":I
    :cond_1
    add-float/2addr v0, v4

    .line 143
    .end local v3    # "widgetItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    .end local v4    # "rowHeight":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    .end local v2    # "i":I
    :cond_2
    iget v2, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mRecommendationTableMaxHeight:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    .line 158
    new-instance v2, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;-><init>(Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;Ljava/util/List;F)V

    return-object v2

    .line 161
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 164
    const/4 v2, 0x0

    .line 167
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .line 166
    invoke-interface {p2, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 164
    invoke-direct {p0, p1, v2}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->fitRecommendedWidgetsToTableSpace(FLjava/util/List;)Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;

    move-result-object v2

    return-object v2

    .line 170
    :cond_4
    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v2, p1

    .line 171
    .local v2, "nextPreviewScale":F
    invoke-direct {p0, v2, p2}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->fitRecommendedWidgetsToTableSpace(FLjava/util/List;)Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public setRecommendedWidgets(Ljava/util/List;F)V
    .locals 1
    .param p2, "recommendationTableMaxHeight"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;>;F)V"
        }
    .end annotation

    .line 90
    .local p1, "recommendedWidgets":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Lcom/android/launcher3/model/WidgetItem;>;>;"
    iput p2, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mRecommendationTableMaxHeight:F

    .line 91
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->fitRecommendedWidgetsToTableSpace(FLjava/util/List;)Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;

    move-result-object v0

    .line 93
    .local v0, "data":Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;
    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->bindData(Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;)V

    .line 94
    return-void
.end method

.method public setWidgetCellLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .line 72
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mWidgetCellOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 73
    return-void
.end method

.method public setWidgetCellOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "widgetCellOnClickListener"    # Landroid/view/View$OnClickListener;

    .line 77
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mWidgetCellOnClickListener:Landroid/view/View$OnClickListener;

    .line 78
    return-void
.end method
