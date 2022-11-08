.class Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;
.super Ljava/lang/Object;
.source "WidgetsRecommendationTableLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecommendationTableData"
.end annotation


# instance fields
.field private final mPreviewScale:F

.field private final mRecommendationTable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreviewScale(Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;->mPreviewScale:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecommendationTable(Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;->mRecommendationTable:Ljava/util/List;

    return-object p0
.end method

.method constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;Ljava/util/List;F)V
    .locals 0
    .param p3, "previewScale"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;>;F)V"
        }
    .end annotation

    .line 180
    .local p2, "recommendationTable":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Lcom/android/launcher3/model/WidgetItem;>;>;"
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;->this$0:Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p2, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;->mRecommendationTable:Ljava/util/List;

    .line 182
    iput p3, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;->mPreviewScale:F

    .line 183
    return-void
.end method
