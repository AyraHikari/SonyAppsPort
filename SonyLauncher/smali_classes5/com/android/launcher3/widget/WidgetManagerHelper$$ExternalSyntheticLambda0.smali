.class public final synthetic Lcom/android/launcher3/widget/WidgetManagerHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/appwidget/AppWidgetManager;


# direct methods
.method public synthetic constructor <init>(Landroid/appwidget/AppWidgetManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetManagerHelper$$ExternalSyntheticLambda0;->f$0:Landroid/appwidget/AppWidgetManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetManagerHelper$$ExternalSyntheticLambda0;->f$0:Landroid/appwidget/AppWidgetManager;

    check-cast p1, Landroid/os/UserHandle;

    invoke-static {v0, p1}, Lcom/android/launcher3/widget/WidgetManagerHelper;->lambda$allWidgetsSteam$0(Landroid/appwidget/AppWidgetManager;Landroid/os/UserHandle;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method
