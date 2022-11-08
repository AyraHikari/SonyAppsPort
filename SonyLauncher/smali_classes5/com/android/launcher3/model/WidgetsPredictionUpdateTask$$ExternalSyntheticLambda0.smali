.class public final synthetic Lcom/android/launcher3/model/WidgetsPredictionUpdateTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-static {p1}, Lcom/android/launcher3/model/WidgetsPredictionUpdateTask;->lambda$execute$0(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object p1

    return-object p1
.end method
