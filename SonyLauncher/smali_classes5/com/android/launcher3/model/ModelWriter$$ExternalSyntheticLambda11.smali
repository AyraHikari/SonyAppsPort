.class public final synthetic Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

.field public final synthetic f$1:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/LauncherAppWidgetHost;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda11;->f$0:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    iput-object p2, p0, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda11;->f$1:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda11;->f$0:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda11;->f$1:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-static {v0, v1}, Lcom/android/launcher3/model/ModelWriter;->lambda$deleteWidgetInfo$10(Lcom/android/launcher3/widget/LauncherAppWidgetHost;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    return-void
.end method
