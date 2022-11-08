.class public final synthetic Lcom/android/launcher3/icons/IconProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/LauncherActivityInfo;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/LauncherActivityInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/IconProvider$$ExternalSyntheticLambda1;->f$0:Landroid/content/pm/LauncherActivityInfo;

    iput p2, p0, Lcom/android/launcher3/icons/IconProvider$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/icons/IconProvider$$ExternalSyntheticLambda1;->f$0:Landroid/content/pm/LauncherActivityInfo;

    iget v1, p0, Lcom/android/launcher3/icons/IconProvider$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, v1}, Lcom/android/launcher3/icons/IconProvider;->lambda$getIcon$0(Landroid/content/pm/LauncherActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
