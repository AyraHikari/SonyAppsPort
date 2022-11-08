.class public final synthetic Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public synthetic constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda0;->f$0:Lorg/xmlpull/v1/XmlPullParser;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda0;->f$0:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/android/launcher3/LauncherProvider;->lambda$createWorkspaceLoaderFromAppRestriction$4(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    return-object v0
.end method
