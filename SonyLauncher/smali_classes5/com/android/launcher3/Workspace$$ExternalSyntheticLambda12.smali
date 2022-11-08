.class public final synthetic Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda12;->f$0:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda12;->f$0:Landroid/graphics/Rect;

    check-cast p1, Lcom/android/launcher3/CellLayout;

    invoke-static {v0, p1}, Lcom/android/launcher3/Workspace;->lambda$updateCellLayoutPadding$0(Landroid/graphics/Rect;Lcom/android/launcher3/CellLayout;)V

    return-void
.end method
