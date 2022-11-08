.class Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
.super Ljava/lang/Object;
.source "SliceProviderCompat.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/compat/SliceProviderCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderHolder"
.end annotation


# instance fields
.field final mProvider:Landroid/content/ContentProviderClient;


# direct methods
.method constructor <init>(Landroid/content/ContentProviderClient;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/ContentProviderClient;

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    iput-object p1, p0, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    .line 704
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 708
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    return-void

    .line 709
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 710
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_0

    .line 712
    :cond_1
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 714
    :goto_0
    return-void
.end method
