.class Lcom/android/launcher3/Launcher$NonConfigInstance;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonConfigInstance"
.end annotation


# instance fields
.field public config:Landroid/content/res/Configuration;

.field public snapshot:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/Launcher$NonConfigInstance-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Launcher$NonConfigInstance;-><init>()V

    return-void
.end method
