.class public final synthetic Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm$$ExternalSyntheticLambda3;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm$$ExternalSyntheticLambda3;->f$1:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm;->lambda$getFilteredWidgets$2(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)V

    return-void
.end method
