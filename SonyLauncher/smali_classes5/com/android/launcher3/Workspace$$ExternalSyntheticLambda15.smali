.class public final synthetic Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda15;->f$0:I

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 1

    iget v0, p0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda15;->f$0:I

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/Workspace;->lambda$getWidgetForAppWidgetId$11(ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
