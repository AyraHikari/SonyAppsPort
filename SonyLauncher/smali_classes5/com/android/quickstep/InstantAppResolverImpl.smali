.class public Lcom/android/quickstep/InstantAppResolverImpl;
.super Lcom/android/launcher3/util/InstantAppResolver;
.source "InstantAppResolverImpl.java"


# static fields
.field public static final COMPONENT_CLASS_MARKER:Ljava/lang/String; = "@instantapp"

.field private static final TAG:Ljava/lang/String; = "InstantAppResolverImpl"


# instance fields
.field private final mPM:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Lcom/android/launcher3/util/InstantAppResolver;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/InstantAppResolverImpl;->mPM:Landroid/content/pm/PackageManager;

    .line 40
    return-void
.end method


# virtual methods
.method public isInstantApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 44
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    return v0
.end method

.method public isInstantApp(Lcom/android/launcher3/model/data/AppInfo;)Z
    .locals 3
    .param p1, "info"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 49
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 50
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@instantapp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
