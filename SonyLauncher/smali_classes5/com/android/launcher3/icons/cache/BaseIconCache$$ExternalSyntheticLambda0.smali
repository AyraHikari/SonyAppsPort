.class public final synthetic Lcom/android/launcher3/icons/cache/BaseIconCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/icons/cache/BaseIconCache;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/icons/cache/BaseIconCache;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/cache/BaseIconCache$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/icons/cache/BaseIconCache;

    iput p2, p0, Lcom/android/launcher3/icons/cache/BaseIconCache$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/launcher3/icons/cache/BaseIconCache$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/icons/cache/BaseIconCache;

    iget v1, p0, Lcom/android/launcher3/icons/cache/BaseIconCache$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/android/launcher3/icons/cache/BaseIconCache$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/icons/cache/BaseIconCache;->lambda$updateIconParams$0$com-android-launcher3-icons-cache-BaseIconCache(II)V

    return-void
.end method
