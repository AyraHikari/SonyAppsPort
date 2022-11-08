.class Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;
.super Ljava/lang/Object;
.source "TaskIconCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/TaskIconCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskCacheEntry"
.end annotation


# instance fields
.field public contentDescription:Ljava/lang/String;

.field public icon:Landroid/graphics/drawable/Drawable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    const-string v0, ""

    iput-object v0, p0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->contentDescription:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quickstep/TaskIconCache$TaskCacheEntry-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;-><init>()V

    return-void
.end method
