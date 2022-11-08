.class public final Lcom/sonymobile/launcher/util/HomeDebug;
.super Ljava/lang/Object;
.source "HomeDebug.java"


# static fields
.field public static final LOG_ALL_APPS:Z

.field public static final LOG_CUSTOMIZATION:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getShortComponentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    .line 18
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
