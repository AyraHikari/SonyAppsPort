.class public final synthetic Lcom/android/launcher3/icons/IconProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/icons/IconProvider;

.field public final synthetic f$1:Landroid/content/pm/ActivityInfo;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/icons/IconProvider;Landroid/content/pm/ActivityInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/IconProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/icons/IconProvider;

    iput-object p2, p0, Lcom/android/launcher3/icons/IconProvider$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/ActivityInfo;

    iput p3, p0, Lcom/android/launcher3/icons/IconProvider$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/icons/IconProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/icons/IconProvider;

    iget-object v1, p0, Lcom/android/launcher3/icons/IconProvider$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/ActivityInfo;

    iget v2, p0, Lcom/android/launcher3/icons/IconProvider$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/icons/IconProvider;->lambda$getIcon$1$com-android-launcher3-icons-IconProvider(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
