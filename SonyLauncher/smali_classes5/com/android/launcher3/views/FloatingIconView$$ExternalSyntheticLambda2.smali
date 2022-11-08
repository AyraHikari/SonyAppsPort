.class public final synthetic Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda2;->f$0:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda2;->f$0:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/android/launcher3/views/FloatingIconView;->lambda$getIconResult$0(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
