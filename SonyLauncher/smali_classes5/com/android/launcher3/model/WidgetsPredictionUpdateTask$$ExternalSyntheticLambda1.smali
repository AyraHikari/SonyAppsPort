.class public final synthetic Lcom/android/launcher3/model/WidgetsPredictionUpdateTask$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/WidgetsPredictionUpdateTask$$ExternalSyntheticLambda1;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsPredictionUpdateTask$$ExternalSyntheticLambda1;->f$0:Ljava/util/Set;

    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    invoke-static {v0, p1}, Lcom/android/launcher3/model/WidgetsPredictionUpdateTask;->lambda$execute$1(Ljava/util/Set;Lcom/android/launcher3/model/WidgetItem;)Z

    move-result p1

    return p1
.end method
