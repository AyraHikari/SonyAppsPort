.class public final synthetic Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;

    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm;->lambda$filterWidgetItems$3(Ljava/lang/String;Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;Lcom/android/launcher3/model/WidgetItem;)Z

    move-result p1

    return p1
.end method
